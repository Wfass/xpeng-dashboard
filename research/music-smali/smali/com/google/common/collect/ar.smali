.class public abstract Lcom/google/common/collect/ar;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/ar<",
            "TT;>;"
        }
    .end annotation

    .line 179
    instance-of v0, p0, Lcom/google/common/collect/ar;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/ar;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static b()Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ar<",
            "TC;>;"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/an;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 860
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/ar<",
            "TS;>;"
        }
    .end annotation

    .line 402
    new-instance v0, Lcom/google/common/collect/az;

    invoke-direct {v0, p0}, Lcom/google/common/collect/az;-><init>(Lcom/google/common/collect/ar;)V

    return-object v0
.end method

.method public a(Lcom/google/common/base/h;)Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/h<",
            "TF;+TT;>;)",
            "Lcom/google/common/collect/ar<",
            "TF;>;"
        }
    .end annotation

    .line 446
    new-instance v0, Lcom/google/common/collect/k;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/k;-><init>(Lcom/google/common/base/h;Lcom/google/common/collect/ar;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ar;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .line 677
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ar;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method c()Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lcom/google/common/collect/ar<",
            "Ljava/util/Map$Entry<",
            "TT2;*>;>;"
        }
    .end annotation

    .line 450
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Lcom/google/common/base/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ar;->a(Lcom/google/common/base/h;)Lcom/google/common/collect/ar;

    move-result-object v0

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

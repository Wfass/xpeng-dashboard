.class final Lcom/google/common/collect/ImmutableSortedMultiset$b;
.super Ljava/lang/Object;
.source "ImmutableSortedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final c:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedMultiset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->a:Ljava/util/Comparator;

    .line 643
    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 644
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    .line 645
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    .line 647
    invoke-interface {p1}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$a;

    .line 648
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 649
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$a;->b()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/google/common/collect/Multisets$FilteredMultiset$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/base/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$FilteredMultiset;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/p<",
        "Lcom/google/common/collect/Multiset$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multisets$FilteredMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$FilteredMultiset;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/google/common/collect/Multisets$FilteredMultiset$1;->a:Lcom/google/common/collect/Multisets$FilteredMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/Multiset$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;)Z"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset$1;->a:Lcom/google/common/collect/Multisets$FilteredMultiset;

    iget-object v0, v0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/p;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 309
    check-cast p1, Lcom/google/common/collect/Multiset$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset$1;->a(Lcom/google/common/collect/Multiset$a;)Z

    move-result p1

    return p1
.end method

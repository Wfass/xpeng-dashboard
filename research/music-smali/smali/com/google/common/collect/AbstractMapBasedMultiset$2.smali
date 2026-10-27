.class Lcom/google/common/collect/AbstractMapBasedMultiset$2;
.super Lcom/google/common/collect/AbstractMapBasedMultiset$a;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultiset<",
        "TE;>.a<",
        "Lcom/google/common/collect/Multiset$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$a;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-void
.end method


# virtual methods
.method synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->b(I)Lcom/google/common/collect/Multiset$a;

    move-result-object p1

    return-object p1
.end method

.method b(I)Lcom/google/common/collect/Multiset$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$2;->a:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ap;->e(I)Lcom/google/common/collect/Multiset$a;

    move-result-object p1

    return-object p1
.end method

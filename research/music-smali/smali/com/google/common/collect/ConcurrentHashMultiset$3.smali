.class Lcom/google/common/collect/ConcurrentHashMultiset$3;
.super Lcom/google/common/collect/v;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v<",
        "Lcom/google/common/collect/Multiset$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;

.field private c:Lcom/google/common/collect/Multiset$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/Multiset$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;"
        }
    .end annotation

    .line 534
    invoke-super {p0}, Lcom/google/common/collect/v;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$a;

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->c:Lcom/google/common/collect/Multiset$a;

    .line 535
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->c:Lcom/google/common/collect/Multiset$a;

    return-object v0
.end method

.method protected synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$3;->b()Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->c:Lcom/google/common/collect/Multiset$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Z)V

    .line 541
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->c:Lcom/google/common/collect/Multiset$a;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$3;->c:Lcom/google/common/collect/Multiset$a;

    return-void
.end method

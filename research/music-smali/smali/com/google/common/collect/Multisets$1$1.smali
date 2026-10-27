.class Lcom/google/common/collect/Multisets$1$1;
.super Lcom/google/common/collect/b;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$1;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "Lcom/google/common/collect/Multiset$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/Multisets$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$1;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/google/common/collect/Multisets$1$1;->c:Lcom/google/common/collect/Multisets$1;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$1$1;->a:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Multisets$1$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$1$1;->c()Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/google/common/collect/Multiset$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$a<",
            "TE;>;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$a;

    .line 417
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object v1

    .line 418
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->b()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$1$1;->c:Lcom/google/common/collect/Multisets$1;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$1;->val$multiset2:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 419
    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/Multisets$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$a;

    .line 423
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/google/common/collect/Multisets$1$1;->c:Lcom/google/common/collect/Multisets$1;

    iget-object v2, v2, Lcom/google/common/collect/Multisets$1;->val$multiset1:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, v1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->b()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    return-object v0

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$1$1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$a;

    return-object v0
.end method

.class Lcom/google/common/collect/Sets$1$1;
.super Lcom/google/common/collect/b;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$1;->iterator()Lcom/google/common/collect/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/Sets$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$1;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/google/common/collect/Sets$1$1;->c:Lcom/google/common/collect/Sets$1;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    .line 686
    iget-object p1, p0, Lcom/google/common/collect/Sets$1$1;->c:Lcom/google/common/collect/Sets$1;

    iget-object p1, p1, Lcom/google/common/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$1$1;->a:Ljava/util/Iterator;

    .line 687
    iget-object p1, p0, Lcom/google/common/collect/Sets$1$1;->c:Lcom/google/common/collect/Sets$1;

    iget-object p1, p1, Lcom/google/common/collect/Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$1$1;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 696
    iget-object v1, p0, Lcom/google/common/collect/Sets$1$1;->c:Lcom/google/common/collect/Sets$1;

    iget-object v1, v1, Lcom/google/common/collect/Sets$1;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$1$1;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

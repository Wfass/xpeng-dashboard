.class Lcom/google/common/collect/Sets$4$1;
.super Lcom/google/common/collect/b;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$4;->iterator()Lcom/google/common/collect/bk;
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
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/Sets$4;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$4;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/google/common/collect/Sets$4$1;->c:Lcom/google/common/collect/Sets$4;

    iput-object p2, p0, Lcom/google/common/collect/Sets$4$1;->a:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/Sets$4$1;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 884
    iget-object v1, p0, Lcom/google/common/collect/Sets$4$1;->c:Lcom/google/common/collect/Sets$4;

    iget-object v1, v1, Lcom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/google/common/collect/Sets$4$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 890
    iget-object v1, p0, Lcom/google/common/collect/Sets$4$1;->c:Lcom/google/common/collect/Sets$4;

    iget-object v1, v1, Lcom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 894
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$4$1;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

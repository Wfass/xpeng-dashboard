.class Lcom/google/common/collect/TreeTraverser$2;
.super Lcom/google/common/collect/FluentIterable;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/bj;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bj;Ljava/lang/Object;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$2;->this$0:Lcom/google/common/collect/bj;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$2;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lcom/google/common/collect/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "TT;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$2;->this$0:Lcom/google/common/collect/bj;

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$2;->val$root:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bj;->b(Ljava/lang/Object;)Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/google/common/collect/TreeTraverser$2;->iterator()Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

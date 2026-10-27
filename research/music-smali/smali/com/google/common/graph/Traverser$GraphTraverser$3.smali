.class Lcom/google/common/graph/Traverser$GraphTraverser$3;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/m$a;

.field final synthetic val$startNodes:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lcom/google/common/graph/m$a;Ljava/lang/Iterable;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->this$0:Lcom/google/common/graph/m$a;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->val$startNodes:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/google/common/graph/m$a$b;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->this$0:Lcom/google/common/graph/m$a;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->val$startNodes:Ljava/lang/Iterable;

    sget-object v3, Lcom/google/common/graph/m$b;->POSTORDER:Lcom/google/common/graph/m$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/graph/m$a$b;-><init>(Lcom/google/common/graph/m$a;Ljava/lang/Iterable;Lcom/google/common/graph/m$b;)V

    return-object v0
.end method

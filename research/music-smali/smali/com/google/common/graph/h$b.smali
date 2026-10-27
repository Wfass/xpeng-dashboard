.class final Lcom/google/common/graph/h$b;
.super Lcom/google/common/graph/h;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/h<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/e<",
            "TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/h;-><init>(Lcom/google/common/graph/e;Lcom/google/common/graph/h$1;)V

    .line 115
    invoke-interface {p1}, Lcom/google/common/graph/e;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/h$b;->c:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/e;Lcom/google/common/graph/h$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/common/graph/h$b;-><init>(Lcom/google/common/graph/e;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/google/common/graph/h$b;->d()Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/h$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/common/graph/h$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/google/common/graph/h$b;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/common/graph/h$b;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/h$b;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/graph/h$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/google/common/graph/h$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/google/common/graph/h$b;->c:Ljava/util/Set;

    .line 131
    invoke-virtual {p0}, Lcom/google/common/graph/h$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/EndpointPair;

    return-object v0
.end method

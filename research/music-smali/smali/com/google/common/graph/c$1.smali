.class Lcom/google/common/graph/c$1;
.super Lcom/google/common/graph/b;
.source "AbstractNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/b<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/c;


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/common/graph/c$1;->a:Lcom/google/common/graph/c;

    invoke-virtual {v0}, Lcom/google/common/graph/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0}, Lcom/google/common/graph/b;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractNetwork$1$1;-><init>(Lcom/google/common/graph/c$1;)V

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/common/graph/c$1;->a:Lcom/google/common/graph/c;

    invoke-virtual {v0}, Lcom/google/common/graph/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/common/graph/c$1;->a:Lcom/google/common/graph/c;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/common/graph/c$1;->a:Lcom/google/common/graph/c;

    invoke-virtual {v0}, Lcom/google/common/graph/c;->c()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/common/graph/c$1;->a:Lcom/google/common/graph/c;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/common/graph/c$1;->a:Lcom/google/common/graph/c;

    invoke-virtual {v0}, Lcom/google/common/graph/c;->e()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/common/graph/c$1;->a:Lcom/google/common/graph/c;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic g(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/common/graph/c$1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

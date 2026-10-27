.class public abstract Lcom/google/common/collect/bj;
.super Ljava/lang/Object;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/bj$a;,
        Lcom/google/common/collect/bj$b;,
        Lcom/google/common/collect/bj$c;,
        Lcom/google/common/collect/bj$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method

.method b(Ljava/lang/Object;)Lcom/google/common/collect/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/bk<",
            "TT;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/google/common/collect/bj$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bj$d;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;)V

    return-object v0
.end method

.method c(Ljava/lang/Object;)Lcom/google/common/collect/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/bk<",
            "TT;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/google/common/collect/bj$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bj$b;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;)V

    return-object v0
.end method

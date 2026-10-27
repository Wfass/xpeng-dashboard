.class public abstract Lcom/google/common/cache/b;
.super Ljava/lang/Object;
.source "CacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/util/concurrent/i<",
            "TV;>;"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/common/cache/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/i;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

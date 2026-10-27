.class final enum Lcom/google/common/cache/LocalCache$b$6;
.super Lcom/google/common/cache/LocalCache$b;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$b;-><init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/cache/LocalCache$h;Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$h<",
            "TK;TV;>;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 507
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$b;->a(Lcom/google/common/cache/LocalCache$h;Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object p1

    .line 508
    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/LocalCache$b$6;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)V

    return-object p1
.end method

.method a(Lcom/google/common/cache/LocalCache$h;Ljava/lang/Object;ILcom/google/common/cache/c;)Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/LocalCache$h<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 501
    new-instance v0, Lcom/google/common/cache/LocalCache$r;

    iget-object p1, p1, Lcom/google/common/cache/LocalCache$h;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$r;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/c;)V

    return-object v0
.end method

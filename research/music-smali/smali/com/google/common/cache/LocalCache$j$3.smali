.class final enum Lcom/google/common/cache/LocalCache$j$3;
.super Lcom/google/common/cache/LocalCache$j;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$j;-><init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/cache/LocalCache$h;Lcom/google/common/cache/c;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$q;
    .locals 1
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
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 411
    new-instance p4, Lcom/google/common/cache/LocalCache$u;

    iget-object p1, p1, Lcom/google/common/cache/LocalCache$h;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p4, p1, p3, p2}, Lcom/google/common/cache/LocalCache$u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$y;

    iget-object p1, p1, Lcom/google/common/cache/LocalCache$h;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/google/common/cache/LocalCache$y;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;I)V

    move-object p4, v0

    :goto_0
    return-object p4
.end method

.class final enum Lcom/google/common/cache/LocalCache$j$1;
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

    .line 378
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$j;-><init>(Ljava/lang/String;ILcom/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/cache/LocalCache$h;Lcom/google/common/cache/c;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$q;
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
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 382
    new-instance p1, Lcom/google/common/cache/LocalCache$n;

    invoke-direct {p1, p3}, Lcom/google/common/cache/LocalCache$n;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/cache/LocalCache$x;

    invoke-direct {p1, p3, p4}, Lcom/google/common/cache/LocalCache$x;-><init>(Ljava/lang/Object;I)V

    :goto_0
    return-object p1
.end method

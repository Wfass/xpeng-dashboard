.class final Lcom/google/common/cache/LocalCache$y;
.super Lcom/google/common/cache/LocalCache$u;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$u<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1587
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;)V

    .line 1588
    iput p4, p0, Lcom/google/common/cache/LocalCache$y;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1593
    iget v0, p0, Lcom/google/common/cache/LocalCache$y;->b:I

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1599
    new-instance v0, Lcom/google/common/cache/LocalCache$y;

    iget v1, p0, Lcom/google/common/cache/LocalCache$y;->b:I

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/common/cache/LocalCache$y;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;I)V

    return-object v0
.end method

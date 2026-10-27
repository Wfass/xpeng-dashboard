.class Lcom/google/common/cache/LocalCache$f$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/base/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$f;->a(Ljava/lang/Object;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/h<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/cache/LocalCache$f;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$f;)V
    .locals 0

    .line 3456
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$f$1;->a:Lcom/google/common/cache/LocalCache$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 3459
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f$1;->a:Lcom/google/common/cache/LocalCache$f;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache$f;->b(Ljava/lang/Object;)Z

    return-object p1
.end method

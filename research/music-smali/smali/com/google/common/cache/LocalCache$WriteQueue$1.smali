.class Lcom/google/common/cache/LocalCache$WriteQueue$1;
.super Lcom/google/common/cache/LocalCache$a;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$WriteQueue;)V
    .locals 0

    .line 3518
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->c:Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$a;-><init>()V

    .line 3528
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->a:Lcom/google/common/cache/c;

    .line 3540
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->b:Lcom/google/common/cache/c;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3537
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->a:Lcom/google/common/cache/c;

    return-void
.end method

.method public d(Lcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3549
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->b:Lcom/google/common/cache/c;

    return-void
.end method

.method public h()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public i()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3532
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->a:Lcom/google/common/cache/c;

    return-object v0
.end method

.method public j()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3544
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->b:Lcom/google/common/cache/c;

    return-object v0
.end method

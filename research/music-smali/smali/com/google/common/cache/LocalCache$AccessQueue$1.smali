.class Lcom/google/common/cache/LocalCache$AccessQueue$1;
.super Lcom/google/common/cache/LocalCache$a;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$AccessQueue;
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

.field final synthetic c:Lcom/google/common/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$AccessQueue;)V
    .locals 0

    .line 3657
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->c:Lcom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$a;-><init>()V

    .line 3667
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->a:Lcom/google/common/cache/c;

    .line 3679
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->b:Lcom/google/common/cache/c;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3676
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->a:Lcom/google/common/cache/c;

    return-void
.end method

.method public b(Lcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3688
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->b:Lcom/google/common/cache/c;

    return-void
.end method

.method public e()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public f()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3671
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->a:Lcom/google/common/cache/c;

    return-object v0
.end method

.method public g()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3683
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$AccessQueue$1;->b:Lcom/google/common/cache/c;

    return-object v0
.end method

.class final Lcom/google/common/cache/LocalCache$r;
.super Lcom/google/common/cache/LocalCache$t;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$t<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:J

.field b:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$t;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/c;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1272
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$r;->a:J

    .line 1285
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$r;->b:Lcom/google/common/cache/c;

    .line 1298
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$r;->c:Lcom/google/common/cache/c;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1281
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$r;->a:J

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

    .line 1294
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$r;->b:Lcom/google/common/cache/c;

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

    .line 1307
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$r;->c:Lcom/google/common/cache/c;

    return-void
.end method

.method public e()J
    .locals 2

    .line 1276
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$r;->a:J

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

    .line 1289
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$r;->b:Lcom/google/common/cache/c;

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

    .line 1302
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$r;->c:Lcom/google/common/cache/c;

    return-object v0
.end method

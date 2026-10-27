.class final Lcom/google/common/cache/LocalCache$s;
.super Lcom/google/common/cache/LocalCache$t;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "s"
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

.field volatile d:J

.field e:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/cache/c;
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

    .line 1361
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$t;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/c;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1366
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$s;->a:J

    .line 1379
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$s;->b:Lcom/google/common/cache/c;

    .line 1392
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$s;->c:Lcom/google/common/cache/c;

    .line 1406
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$s;->d:J

    .line 1419
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$s;->e:Lcom/google/common/cache/c;

    .line 1432
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$s;->f:Lcom/google/common/cache/c;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1375
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$s;->a:J

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

    .line 1388
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$s;->b:Lcom/google/common/cache/c;

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1415
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$s;->d:J

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

    .line 1401
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$s;->c:Lcom/google/common/cache/c;

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

    .line 1428
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$s;->e:Lcom/google/common/cache/c;

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

    .line 1441
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$s;->f:Lcom/google/common/cache/c;

    return-void
.end method

.method public e()J
    .locals 2

    .line 1370
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$s;->a:J

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

    .line 1383
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$s;->b:Lcom/google/common/cache/c;

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

    .line 1396
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$s;->c:Lcom/google/common/cache/c;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1410
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$s;->d:J

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

    .line 1423
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$s;->e:Lcom/google/common/cache/c;

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

    .line 1436
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$s;->f:Lcom/google/common/cache/c;

    return-object v0
.end method

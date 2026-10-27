.class final Lcom/google/common/cache/LocalCache$o;
.super Lcom/google/common/cache/LocalCache$m;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$m<",
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1025
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$m;-><init>(Ljava/lang/Object;ILcom/google/common/cache/c;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1030
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$o;->a:J

    .line 1043
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->b:Lcom/google/common/cache/c;

    .line 1056
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->c:Lcom/google/common/cache/c;

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 0

    .line 1039
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$o;->a:J

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

    .line 1052
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->b:Lcom/google/common/cache/c;

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

    .line 1065
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$o;->c:Lcom/google/common/cache/c;

    return-void
.end method

.method public h()J
    .locals 2

    .line 1034
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$o;->a:J

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

    .line 1047
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$o;->b:Lcom/google/common/cache/c;

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

    .line 1060
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$o;->c:Lcom/google/common/cache/c;

    return-object v0
.end method

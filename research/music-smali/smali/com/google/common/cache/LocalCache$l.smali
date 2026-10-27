.class final Lcom/google/common/cache/LocalCache$l;
.super Lcom/google/common/cache/LocalCache$m;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
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
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1071
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$m;-><init>(Ljava/lang/Object;ILcom/google/common/cache/c;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1076
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$l;->a:J

    .line 1089
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$l;->b:Lcom/google/common/cache/c;

    .line 1102
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p3

    iput-object p3, p0, Lcom/google/common/cache/LocalCache$l;->c:Lcom/google/common/cache/c;

    .line 1116
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$l;->d:J

    .line 1129
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$l;->e:Lcom/google/common/cache/c;

    .line 1142
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$l;->f:Lcom/google/common/cache/c;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1085
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$l;->a:J

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

    .line 1098
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$l;->b:Lcom/google/common/cache/c;

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1125
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$l;->d:J

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

    .line 1111
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$l;->c:Lcom/google/common/cache/c;

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

    .line 1138
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$l;->e:Lcom/google/common/cache/c;

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

    .line 1151
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$l;->f:Lcom/google/common/cache/c;

    return-void
.end method

.method public e()J
    .locals 2

    .line 1080
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$l;->a:J

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

    .line 1093
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$l;->b:Lcom/google/common/cache/c;

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

    .line 1106
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$l;->c:Lcom/google/common/cache/c;

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1120
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$l;->d:J

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

    .line 1133
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$l;->e:Lcom/google/common/cache/c;

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

    .line 1146
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$l;->f:Lcom/google/common/cache/c;

    return-object v0
.end method

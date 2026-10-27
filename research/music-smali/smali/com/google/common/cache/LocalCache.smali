.class Lcom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/LocalCache$EntrySet;,
        Lcom/google/common/cache/LocalCache$Values;,
        Lcom/google/common/cache/LocalCache$KeySet;,
        Lcom/google/common/cache/LocalCache$AbstractCacheSet;,
        Lcom/google/common/cache/LocalCache$c;,
        Lcom/google/common/cache/LocalCache$z;,
        Lcom/google/common/cache/LocalCache$p;,
        Lcom/google/common/cache/LocalCache$e;,
        Lcom/google/common/cache/LocalCache$d;,
        Lcom/google/common/cache/LocalCache$AccessQueue;,
        Lcom/google/common/cache/LocalCache$WriteQueue;,
        Lcom/google/common/cache/LocalCache$f;,
        Lcom/google/common/cache/LocalCache$h;,
        Lcom/google/common/cache/LocalCache$x;,
        Lcom/google/common/cache/LocalCache$w;,
        Lcom/google/common/cache/LocalCache$y;,
        Lcom/google/common/cache/LocalCache$n;,
        Lcom/google/common/cache/LocalCache$i;,
        Lcom/google/common/cache/LocalCache$u;,
        Lcom/google/common/cache/LocalCache$s;,
        Lcom/google/common/cache/LocalCache$v;,
        Lcom/google/common/cache/LocalCache$r;,
        Lcom/google/common/cache/LocalCache$t;,
        Lcom/google/common/cache/LocalCache$l;,
        Lcom/google/common/cache/LocalCache$o;,
        Lcom/google/common/cache/LocalCache$k;,
        Lcom/google/common/cache/LocalCache$m;,
        Lcom/google/common/cache/LocalCache$a;,
        Lcom/google/common/cache/LocalCache$g;,
        Lcom/google/common/cache/LocalCache$q;,
        Lcom/google/common/cache/LocalCache$b;,
        Lcom/google/common/cache/LocalCache$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final s:Lcom/google/common/cache/LocalCache$q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final t:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final b:I

.field final c:I

.field final d:[Lcom/google/common/cache/LocalCache$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/cache/LocalCache$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final e:Lcom/google/common/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/google/common/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/cache/LocalCache$j;

.field final h:Lcom/google/common/cache/LocalCache$j;

.field final i:J

.field final j:Lcom/google/common/cache/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final k:J

.field final l:J

.field final m:J

.field final n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final o:Lcom/google/common/cache/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final p:Lcom/google/common/base/x;

.field final q:Lcom/google/common/cache/LocalCache$b;

.field final r:Lcom/google/common/cache/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/b<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field v:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-class v0, Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    .line 676
    new-instance v0, Lcom/google/common/cache/LocalCache$1;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$1;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$q;

    .line 893
    new-instance v0, Lcom/google/common/cache/LocalCache$2;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$2;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->t:Ljava/util/Queue;

    return-void
.end method

.method static a(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/google/common/cache/LocalCache;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1775
    invoke-interface {p0, p1}, Lcom/google/common/cache/c;->a(Lcom/google/common/cache/c;)V

    .line 1776
    invoke-interface {p1, p0}, Lcom/google/common/cache/c;->b(Lcom/google/common/cache/c;)V

    return-void
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 4404
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4405
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/ah;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method static b(Lcom/google/common/cache/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1781
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object v0

    .line 1782
    invoke-interface {p0, v0}, Lcom/google/common/cache/c;->a(Lcom/google/common/cache/c;)V

    .line 1783
    invoke-interface {p0, v0}, Lcom/google/common/cache/c;->b(Lcom/google/common/cache/c;)V

    return-void
.end method

.method static b(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1788
    invoke-interface {p0, p1}, Lcom/google/common/cache/c;->c(Lcom/google/common/cache/c;)V

    .line 1789
    invoke-interface {p1, p0}, Lcom/google/common/cache/c;->d(Lcom/google/common/cache/c;)V

    return-void
.end method

.method static c(Lcom/google/common/cache/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1794
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/c;

    move-result-object v0

    .line 1795
    invoke-interface {p0, v0}, Lcom/google/common/cache/c;->c(Lcom/google/common/cache/c;)V

    .line 1796
    invoke-interface {p0, v0}, Lcom/google/common/cache/c;->d(Lcom/google/common/cache/c;)V

    return-void
.end method

.method static i()Lcom/google/common/cache/LocalCache$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 723
    sget-object v0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$q;

    return-object v0
.end method

.method static j()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 890
    sget-object v0, Lcom/google/common/cache/LocalCache$g;->INSTANCE:Lcom/google/common/cache/LocalCache$g;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    invoke-virtual {v0, p1}, Lcom/google/common/base/f;->a(Ljava/lang/Object;)I

    move-result p1

    .line 1696
    invoke-static {p1}, Lcom/google/common/cache/LocalCache;->a(I)I

    move-result p1

    return p1
.end method

.method a(Lcom/google/common/cache/c;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 1743
    invoke-interface {p1}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1746
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1751
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/c;J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method a(Lcom/google/common/cache/LocalCache$q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1700
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$q;->b()Lcom/google/common/cache/c;

    move-result-object v0

    .line 1701
    invoke-interface {v0}, Lcom/google/common/cache/c;->c()I

    move-result v1

    .line 1702
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$q;)Z

    return-void
.end method

.method a(Lcom/google/common/cache/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1706
    invoke-interface {p1}, Lcom/google/common/cache/c;->c()I

    move-result v0

    .line 1707
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;I)Z

    return-void
.end method

.method a()Z
    .locals 4

    .line 313
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b(I)Lcom/google/common/cache/LocalCache$h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/LocalCache$h<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1727
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->d:[Lcom/google/common/cache/LocalCache$h;

    iget v1, p0, Lcom/google/common/cache/LocalCache;->c:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/google/common/cache/LocalCache;->b:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method b()Z
    .locals 4

    .line 325
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b(Lcom/google/common/cache/c;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1761
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/c;->e()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->k:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    return v1

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/common/cache/c;->h()J

    move-result-wide v2

    sub-long/2addr p2, v2

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache;->l:J

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method c()Z
    .locals 4

    .line 329
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 4

    .line 4139
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->d:[Lcom/google/common/cache/LocalCache$h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4140
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$h;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4033
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4034
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$h;->c(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4049
    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v3}, Lcom/google/common/base/x;->a()J

    move-result-wide v3

    .line 4050
    iget-object v5, v0, Lcom/google/common/cache/LocalCache;->d:[Lcom/google/common/cache/LocalCache$h;

    const-wide/16 v6, -0x1

    move-wide v7, v6

    move v6, v2

    :goto_0
    const/4 v9, 0x3

    if-ge v6, v9, :cond_7

    const-wide/16 v9, 0x0

    .line 4054
    array-length v11, v5

    move-wide v12, v9

    move v9, v2

    :goto_1
    if-ge v9, v11, :cond_5

    aget-object v10, v5, v9

    .line 4056
    iget v14, v10, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 4058
    iget-object v14, v10, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v15, v2

    .line 4059
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_4

    .line 4060
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/c;

    :goto_3
    if-eqz v2, :cond_3

    move-object/from16 v16, v5

    .line 4061
    invoke-virtual {v10, v2, v3, v4}, Lcom/google/common/cache/LocalCache$h;->c(Lcom/google/common/cache/c;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    move-wide/from16 v17, v3

    .line 4062
    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->f:Lcom/google/common/base/f;

    invoke-virtual {v3, v1, v5}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_1
    move-wide/from16 v17, v3

    .line 4060
    :cond_2
    invoke-interface {v2}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v2

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    .line 4067
    iget v2, v10, Lcom/google/common/cache/LocalCache$h;->d:I

    int-to-long v2, v2

    add-long/2addr v12, v2

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    cmp-long v2, v12, v7

    if-nez v2, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-wide v7, v12

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_4
    return v1
.end method

.method d()Z
    .locals 4

    .line 333
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method e()Z
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4175
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4176
    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$EntrySet;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/LocalCache$EntrySet;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method f()Z
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->c()Z

    move-result v0

    return v0
.end method

.method g()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/cache/LocalCache$j;

    sget-object v1, Lcom/google/common/cache/LocalCache$j;->STRONG:Lcom/google/common/cache/LocalCache$j;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3845
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3846
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 3870
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method h()Z
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/cache/LocalCache$j;

    sget-object v1, Lcom/google/common/cache/LocalCache$j;->STRONG:Lcom/google/common/cache/LocalCache$j;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 9

    .line 3803
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->d:[Lcom/google/common/cache/LocalCache$h;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    .line 3804
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 3805
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    if-eqz v7, :cond_0

    return v3

    .line 3808
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    if-eqz v4, :cond_4

    move v4, v3

    .line 3812
    :goto_1
    array-length v7, v0

    if-ge v4, v7, :cond_3

    .line 3813
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    if-eqz v7, :cond_2

    return v3

    .line 3816
    :cond_2
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-eqz v0, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method k()V
    .locals 4

    .line 1806
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    if-eqz v0, :cond_0

    .line 1808
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->o:Lcom/google/common/cache/e;

    invoke-interface {v1, v0}, Lcom/google/common/cache/e;->a(Lcom/google/common/cache/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1810
    sget-object v1, Lcom/google/common/cache/LocalCache;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4156
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->u:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4157
    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$KeySet;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/LocalCache$KeySet;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->u:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method l()J
    .locals 7

    .line 3826
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->d:[Lcom/google/common/cache/LocalCache$h;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    move v2, v1

    .line 3828
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 3829
    aget-object v5, v0, v2

    iget v5, v5, Lcom/google/common/cache/LocalCache$h;->b:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4079
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4082
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4095
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4096
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4087
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4088
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4090
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4106
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$h;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4115
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$h;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4131
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4134
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4120
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    invoke-static {p3}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4126
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->b(I)Lcom/google/common/cache/LocalCache$h;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 2

    .line 3836
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4165
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->v:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4166
    :cond_0
    new-instance v0, Lcom/google/common/cache/LocalCache$Values;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/LocalCache$Values;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache;->v:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

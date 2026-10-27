.class abstract Lcom/google/common/cache/LocalCache$d;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/common/cache/LocalCache$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$h<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;>;"
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

.field g:Lcom/google/common/cache/LocalCache$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.z;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/cache/LocalCache$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.z;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .line 4191
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$d;->i:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4192
    iget-object p1, p1, Lcom/google/common/cache/LocalCache;->d:[Lcom/google/common/cache/LocalCache$h;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/cache/LocalCache$d;->b:I

    const/4 p1, -0x1

    .line 4193
    iput p1, p0, Lcom/google/common/cache/LocalCache$d;->c:I

    .line 4194
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d;->b()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/cache/c;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 4253
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->i:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v0

    .line 4254
    invoke-interface {p1}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v2

    .line 4255
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$d;->i:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/c;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4257
    new-instance v0, Lcom/google/common/cache/LocalCache$z;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$d;->i:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/cache/LocalCache$z;-><init>(Lcom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->g:Lcom/google/common/cache/LocalCache$z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 4264
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->d:Lcom/google/common/cache/LocalCache$h;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$h;->l()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->d:Lcom/google/common/cache/LocalCache$h;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$h;->l()V

    .line 4265
    throw p1
.end method

.method final b()V
    .locals 3

    const/4 v0, 0x0

    .line 4201
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->g:Lcom/google/common/cache/LocalCache$z;

    .line 4203
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4207
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4211
    :cond_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$d;->b:I

    if-ltz v0, :cond_2

    .line 4212
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->i:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->d:[Lcom/google/common/cache/LocalCache$h;

    iget v1, p0, Lcom/google/common/cache/LocalCache$d;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$d;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->d:Lcom/google/common/cache/LocalCache$h;

    .line 4213
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->d:Lcom/google/common/cache/LocalCache$h;

    iget v0, v0, Lcom/google/common/cache/LocalCache$h;->b:I

    if-eqz v0, :cond_1

    .line 4214
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->d:Lcom/google/common/cache/LocalCache$h;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4215
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$d;->c:I

    .line 4216
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method c()Z
    .locals 1

    .line 4225
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->f:Lcom/google/common/cache/c;

    if-eqz v0, :cond_1

    .line 4226
    :goto_0
    invoke-interface {v0}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->f:Lcom/google/common/cache/c;

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->f:Lcom/google/common/cache/c;

    if-eqz v0, :cond_1

    .line 4227
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$d;->a(Lcom/google/common/cache/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4226
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->f:Lcom/google/common/cache/c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method d()Z
    .locals 3

    .line 4237
    :cond_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$d;->c:I

    if-ltz v0, :cond_2

    .line 4238
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$d;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$d;->c:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->f:Lcom/google/common/cache/c;

    if-eqz v0, :cond_0

    .line 4239
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->f:Lcom/google/common/cache/c;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$d;->a(Lcom/google/common/cache/c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method e()Lcom/google/common/cache/LocalCache$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>.z;"
        }
    .end annotation

    .line 4274
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->g:Lcom/google/common/cache/LocalCache$z;

    if-eqz v0, :cond_0

    .line 4277
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->h:Lcom/google/common/cache/LocalCache$z;

    .line 4278
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$d;->b()V

    .line 4279
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->h:Lcom/google/common/cache/LocalCache$z;

    return-object v0

    .line 4275
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 4270
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->g:Lcom/google/common/cache/LocalCache$z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    .line 4284
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->h:Lcom/google/common/cache/LocalCache$z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->b(Z)V

    .line 4285
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$d;->i:Lcom/google/common/cache/LocalCache;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$d;->h:Lcom/google/common/cache/LocalCache$z;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache$z;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4286
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$d;->h:Lcom/google/common/cache/LocalCache$z;

    return-void
.end method

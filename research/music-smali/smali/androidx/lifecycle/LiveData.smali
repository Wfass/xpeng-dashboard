.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$a;,
        Landroidx/lifecycle/LiveData$b;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final b:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field c:I

.field volatile d:Ljava/lang/Object;

.field private e:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/lifecycle/s<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.b;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private volatile g:Ljava/lang/Object;

.field private h:I

.field private i:Z

.field private j:Z

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/arch/core/internal/SafeIterableMap;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I

    .line 77
    sget-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 84
    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Runnable;

    .line 111
    sget-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Landroidx/lifecycle/LiveData;->h:I

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .line 486
    invoke-static {}, Lw;->a()Lw;

    move-result-object v0

    invoke-virtual {v0}, Lw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 487
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroidx/lifecycle/LiveData$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 117
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$b;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$b;->a(Z)V

    return-void

    .line 129
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$b;->e:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->h:I

    if-lt v0, v1, :cond_2

    return-void

    .line 132
    :cond_2
    iput v1, p1, Landroidx/lifecycle/LiveData$b;->e:I

    .line 133
    iget-object p1, p1, Landroidx/lifecycle/LiveData$b;->c:Landroidx/lifecycle/s;

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/lifecycle/s;->onChanged(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    .line 323
    sget-object v1, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method a(I)V
    .locals 4

    .line 378
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I

    add-int/2addr p1, v0

    .line 379
    iput p1, p0, Landroidx/lifecycle/LiveData;->c:I

    .line 380
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData;->f:Z

    :goto_0
    const/4 v1, 0x0

    .line 385
    :try_start_0
    iget v2, p0, Landroidx/lifecycle/LiveData;->c:I

    if-eq v0, v2, :cond_5

    if-nez v0, :cond_1

    .line 386
    iget v2, p0, Landroidx/lifecycle/LiveData;->c:I

    if-lez v2, :cond_1

    move v2, p1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lez v0, :cond_2

    .line 387
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I

    if-nez v0, :cond_2

    move v0, p1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 388
    :goto_2
    iget v3, p0, Landroidx/lifecycle/LiveData;->c:I

    if-eqz v2, :cond_3

    .line 390
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->c()V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    move v0, v3

    goto :goto_0

    .line 396
    :cond_5
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->f:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->f:Z

    .line 397
    throw p1
.end method

.method a(Landroidx/lifecycle/LiveData$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.b;)V"
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->j:Z

    return-void

    .line 142
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    :cond_1
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-eqz p1, :cond_2

    .line 146
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$b;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/arch/core/internal/SafeIterableMap;

    .line 150
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$d;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$b;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$b;)V

    .line 152
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-eqz v2, :cond_3

    .line 157
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-nez v1, :cond_1

    .line 158
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    return-void
.end method

.method public a(Landroidx/lifecycle/n;)V
    .locals 3

    const-string v0, "removeObservers"

    .line 261
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$b;

    invoke-virtual {v2, p1}, Landroidx/lifecycle/LiveData$b;->a(Landroidx/lifecycle/n;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/s;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/s;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/n;",
            "Landroidx/lifecycle/s<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    .line 191
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 192
    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/n;Landroidx/lifecycle/s;)V

    .line 197
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p2, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LiveData$b;

    if-eqz p2, :cond_2

    .line 198
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$b;->a(Landroidx/lifecycle/n;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    .line 205
    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    return-void
.end method

.method public a(Landroidx/lifecycle/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/s<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observeForever"

    .line 224
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroidx/lifecycle/LiveData$a;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$a;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/s;)V

    .line 226
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$b;

    .line 227
    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 234
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    return-void

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 288
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 293
    :cond_1
    invoke-static {}, Lw;->a()Lw;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lw;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 289
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b()I
    .locals 1

    .line 330
    iget v0, p0, Landroidx/lifecycle/LiveData;->h:I

    return v0
.end method

.method public b(Landroidx/lifecycle/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/s<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 244
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$b;

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$b;->b()V

    const/4 v0, 0x0

    .line 250
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$b;->a(Z)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    .line 306
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Landroidx/lifecycle/LiveData;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->h:I

    .line 308
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 309
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$b;)V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    .line 373
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

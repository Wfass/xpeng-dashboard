.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$AlwaysActiveObserver;,
        Landroidx/lifecycle/LiveData$ObserverWrapper;,
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
.field private static final NOT_SET:Ljava/lang/Object;

.field static final START_VERSION:I = -0x1


# instance fields
.field private mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field private final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;>;"
        }
    .end annotation
.end field

.field private volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 69
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 72
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 78
    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 423
    return-void
.end method

.method static synthetic access$000(Landroidx/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Landroidx/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 59
    sget-object v0, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/lifecycle/LiveData;)I
    .locals 0

    .line 59
    iget p0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    return p0
.end method

.method static synthetic access$302(Landroidx/lifecycle/LiveData;I)I
    .locals 0

    .line 59
    iput p1, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    return p1
.end method

.method static synthetic access$400(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    return-void
.end method

.method private static assertMainThread(Ljava/lang/String;)V
    .locals 3

    .line 436
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 92
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->shouldBeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 102
    return-void

    .line 104
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    if-lt v0, v1, :cond_2

    .line 105
    return-void

    .line 107
    :cond_2
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    iput v0, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 109
    iget-object p1, p1, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method private dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/LiveData$ObserverWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.ObserverWrapper;)V"
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 115
    return-void

    .line 117
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 119
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 120
    if-eqz p1, :cond_2

    .line 121
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 122
    const/4 p1, 0x0

    goto :goto_0

    .line 124
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 125
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->considerNotify(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 127
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v2, :cond_3

    .line 128
    nop

    .line 132
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    .line 133
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->mDispatchingValue:Z

    .line 134
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 297
    sget-object v1, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 299
    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getVersion()I
    .locals 1

    .line 305
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    return v0
.end method

.method public hasActiveObservers()Z
    .locals 1

    .line 348
    iget v0, p0, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 166
    const-string v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 167
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 172
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p2, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 173
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 178
    return-void

    .line 180
    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 181
    return-void
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 199
    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 200
    new-instance v0, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 201
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 202
    if-eqz p1, :cond_1

    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 207
    return-void

    .line 209
    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$AlwaysActiveObserver;->activeStateChanged(Z)V

    .line 210
    return-void
.end method

.method protected onActive()V
    .locals 0

    .line 316
    return-void
.end method

.method protected onInactive()V
    .locals 0

    .line 329
    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 263
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    if-nez v1, :cond_1

    .line 266
    return-void

    .line 268
    :cond_1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 269
    return-void

    .line 264
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 219
    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$ObserverWrapper;

    .line 221
    if-nez p1, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->detachObserver()V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    .line 226
    return-void
.end method

.method public removeObservers(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 236
    const-string v0, "removeObservers"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v0}, Landroidx/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$ObserverWrapper;

    invoke-virtual {v2, p1}, Landroidx/lifecycle/LiveData$ObserverWrapper;->isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 241
    :cond_0
    goto :goto_0

    .line 242
    :cond_1
    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 281
    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->mVersion:I

    .line 283
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 284
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    .line 285
    return-void
.end method

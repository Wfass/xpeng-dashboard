.class Landroid/support/rastermill/DecodingThreadFactory;
.super Ljava/lang/Object;
.source "DecodingThreadFactory.java"


# static fields
.field public static final DEFAULT_DECODING_THREAD_ID:I

.field private static sDecodingThreadHandlerCountMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDecodingThreadHandlerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/rastermill/DecodingThreadFactory;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createHandler(I)Landroid/os/Handler;
    .locals 3

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Landroid/support/rastermill/DecodingThreadFactory;->getThreadName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    sget-object v0, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public static getDecodingThreadHandler(I)Landroid/os/Handler;
    .locals 4

    .line 56
    invoke-static {}, Landroid/support/rastermill/DecodingThreadFactory;->initializeDecodingThread()V

    .line 58
    sget-object v0, Landroid/support/rastermill/DecodingThreadFactory;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 61
    invoke-static {p0}, Landroid/support/rastermill/DecodingThreadFactory;->createHandler(I)Landroid/os/Handler;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 64
    sget-object v2, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerCountMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 70
    :goto_0
    sget-object v3, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerCountMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getThreadName(I)Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameSequence decoding thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initializeDecodingThread()V
    .locals 2

    .line 23
    sget-object v0, Landroid/support/rastermill/DecodingThreadFactory;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 26
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerMap:Landroid/util/SparseArray;

    .line 27
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerCountMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Landroid/support/rastermill/DecodingThreadFactory;->createHandler(I)Landroid/os/Handler;

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static releaseDecodingThreadHandler(I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    sget-object v0, Landroid/support/rastermill/DecodingThreadFactory;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerCountMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    .line 85
    sget-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 86
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 87
    sget-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 88
    sget-object v1, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerCountMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 90
    :cond_1
    sget-object v2, Landroid/support/rastermill/DecodingThreadFactory;->sDecodingThreadHandlerCountMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

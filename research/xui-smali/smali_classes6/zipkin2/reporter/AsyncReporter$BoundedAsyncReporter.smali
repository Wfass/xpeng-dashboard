.class final Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;
.super Lzipkin2/reporter/AsyncReporter;
.source "AsyncReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/AsyncReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BoundedAsyncReporter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/reporter/AsyncReporter<",
        "TS;>;"
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final close:Ljava/util/concurrent/CountDownLatch;

.field final closeTimeoutNanos:J

.field final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final encoder:Lzipkin2/codec/BytesEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/codec/BytesEncoder<",
            "TS;>;"
        }
    .end annotation
.end field

.field final messageMaxBytes:I

.field final messageTimeoutNanos:J

.field final metrics:Lzipkin2/reporter/ReporterMetrics;

.field final pending:Lzipkin2/reporter/ByteBoundedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/reporter/ByteBoundedQueue<",
            "TS;>;"
        }
    .end annotation
.end field

.field final sender:Lzipkin2/reporter/Sender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    const-class v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lzipkin2/reporter/AsyncReporter$Builder;Lzipkin2/codec/BytesEncoder;)V
    .locals 6
    .param p1, "builder"    # Lzipkin2/reporter/AsyncReporter$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/AsyncReporter$Builder;",
            "Lzipkin2/codec/BytesEncoder<",
            "TS;>;)V"
        }
    .end annotation

    .line 224
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    .local p2, "encoder":Lzipkin2/codec/BytesEncoder;, "Lzipkin2/codec/BytesEncoder<TS;>;"
    invoke-direct {p0}, Lzipkin2/reporter/AsyncReporter;-><init>()V

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    new-instance v0, Lzipkin2/reporter/ByteBoundedQueue;

    iget v2, p1, Lzipkin2/reporter/AsyncReporter$Builder;->queuedMaxSpans:I

    iget v3, p1, Lzipkin2/reporter/AsyncReporter$Builder;->queuedMaxBytes:I

    invoke-direct {v0, v2, v3}, Lzipkin2/reporter/ByteBoundedQueue;-><init>(II)V

    iput-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->pending:Lzipkin2/reporter/ByteBoundedQueue;

    .line 226
    iget-object v0, p1, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    iput-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->sender:Lzipkin2/reporter/Sender;

    .line 227
    iget v0, p1, Lzipkin2/reporter/AsyncReporter$Builder;->messageMaxBytes:I

    iput v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->messageMaxBytes:I

    .line 228
    iget-wide v2, p1, Lzipkin2/reporter/AsyncReporter$Builder;->messageTimeoutNanos:J

    iput-wide v2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->messageTimeoutNanos:J

    .line 229
    iget-wide v2, p1, Lzipkin2/reporter/AsyncReporter$Builder;->closeTimeoutNanos:J

    iput-wide v2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closeTimeoutNanos:J

    .line 230
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-wide v2, p1, Lzipkin2/reporter/AsyncReporter$Builder;->messageTimeoutNanos:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->close:Ljava/util/concurrent/CountDownLatch;

    .line 231
    iget-object v0, p1, Lzipkin2/reporter/AsyncReporter$Builder;->metrics:Lzipkin2/reporter/ReporterMetrics;

    iput-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    .line 232
    iput-object p2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->encoder:Lzipkin2/codec/BytesEncoder;

    .line 233
    return-void
.end method


# virtual methods
.method public check()Lzipkin2/CheckResult;
    .locals 1

    .line 304
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v0}, Lzipkin2/reporter/Sender;->check()Lzipkin2/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .line 308
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    :try_start_0
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->close:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closeTimeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    sget-object v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    const-string v1, "Timed out waiting for in-flight spans to send"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_1
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    const-string v2, "Interrupted waiting for in-flight spans to send"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 318
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->pending:Lzipkin2/reporter/ByteBoundedQueue;

    invoke-virtual {v0}, Lzipkin2/reporter/ByteBoundedQueue;->clear()I

    move-result v0

    .line 319
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 320
    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v1, v0}, Lzipkin2/reporter/ReporterMetrics;->incrementSpansDropped(I)V

    .line 321
    sget-object v1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " spans due to AsyncReporter.close()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 323
    :cond_2
    return-void
.end method

.method public final flush()V
    .locals 4

    .line 251
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->encoder:Lzipkin2/codec/BytesEncoder;

    invoke-interface {v0}, Lzipkin2/codec/BytesEncoder;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v0

    iget v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->messageMaxBytes:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lzipkin2/reporter/BufferNextMessage;->create(Lzipkin2/codec/Encoding;IJ)Lzipkin2/reporter/BufferNextMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->flush(Lzipkin2/reporter/BufferNextMessage;)V

    .line 252
    return-void
.end method

.method flush(Lzipkin2/reporter/BufferNextMessage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/reporter/BufferNextMessage<",
            "TS;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    .local p1, "bundler":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->pending:Lzipkin2/reporter/ByteBoundedQueue;

    invoke-virtual {p1}, Lzipkin2/reporter/BufferNextMessage;->remainingNanos()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lzipkin2/reporter/ByteBoundedQueue;->drainTo(Lzipkin2/reporter/SpanWithSizeConsumer;J)I

    .line 260
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->pending:Lzipkin2/reporter/ByteBoundedQueue;

    iget v1, v1, Lzipkin2/reporter/ByteBoundedQueue;->count:I

    invoke-interface {v0, v1}, Lzipkin2/reporter/ReporterMetrics;->updateQueuedSpans(I)V

    .line 261
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->pending:Lzipkin2/reporter/ByteBoundedQueue;

    iget v1, v1, Lzipkin2/reporter/ByteBoundedQueue;->sizeInBytes:I

    invoke-interface {v0, v1}, Lzipkin2/reporter/ReporterMetrics;->updateQueuedBytes(I)V

    .line 265
    invoke-virtual {p1}, Lzipkin2/reporter/BufferNextMessage;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v0}, Lzipkin2/reporter/ReporterMetrics;->incrementMessages()V

    .line 269
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-virtual {p1}, Lzipkin2/reporter/BufferNextMessage;->sizeInBytes()I

    move-result v1

    invoke-interface {v0, v1}, Lzipkin2/reporter/ReporterMetrics;->incrementMessageBytes(I)V

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lzipkin2/reporter/BufferNextMessage;->count()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v0, "nextMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-instance v1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;

    invoke-direct {v1, p0, v0}, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter$1;-><init>(Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lzipkin2/reporter/BufferNextMessage;->drain(Lzipkin2/reporter/SpanWithSizeConsumer;)V

    .line 286
    :try_start_0
    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v1, v0}, Lzipkin2/reporter/Sender;->sendSpans(Ljava/util/List;)Lzipkin2/Call;

    move-result-object v1

    invoke-virtual {v1}, Lzipkin2/Call;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_1

    .line 287
    :catch_0
    move-exception v1

    .line 289
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 290
    .local v2, "count":I
    invoke-static {v1}, Lzipkin2/Call;->propagateIfFatal(Ljava/lang/Throwable;)V

    .line 291
    iget-object v3, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v3, v1}, Lzipkin2/reporter/ReporterMetrics;->incrementMessagesDropped(Ljava/lang/Throwable;)V

    .line 292
    iget-object v3, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v3, v2}, Lzipkin2/reporter/ReporterMetrics;->incrementSpansDropped(I)V

    .line 293
    sget-object v3, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    sget-object v3, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Dropped %s spans due to %s(%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 296
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v8, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    :goto_0
    aput-object v8, v6, v7

    .line 295
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    :cond_2
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_3

    .line 301
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "count":I
    :goto_1
    return-void

    .line 299
    .restart local v1    # "t":Ljava/lang/Throwable;
    .restart local v2    # "count":I
    :cond_3
    move-object v3, v1

    check-cast v3, Ljava/lang/IllegalStateException;

    throw v3

    .line 255
    .end local v0    # "nextMessage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "count":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public report(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 237
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    .local p1, "next":Ljava/lang/Object;, "TS;"
    if-eqz p1, :cond_2

    .line 238
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lzipkin2/reporter/ReporterMetrics;->incrementSpans(I)V

    .line 239
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->encoder:Lzipkin2/codec/BytesEncoder;

    invoke-interface {v0, p1}, Lzipkin2/codec/BytesEncoder;->sizeInBytes(Ljava/lang/Object;)I

    move-result v0

    .line 240
    .local v0, "nextSizeInBytes":I
    iget-object v2, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v2, v0}, Lzipkin2/reporter/Sender;->messageSizeInBytes(I)I

    move-result v2

    .line 241
    .local v2, "messageSizeOfNextSpan":I
    iget-object v3, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v3, v0}, Lzipkin2/reporter/ReporterMetrics;->incrementSpanBytes(I)V

    .line 242
    iget-object v3, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->messageMaxBytes:I

    if-gt v2, v3, :cond_0

    iget-object v3, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->pending:Lzipkin2/reporter/ByteBoundedQueue;

    .line 245
    invoke-virtual {v3, p1, v0}, Lzipkin2/reporter/ByteBoundedQueue;->offer(Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    :cond_0
    iget-object v3, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v3, v1}, Lzipkin2/reporter/ReporterMetrics;->incrementSpansDropped(I)V

    .line 248
    :cond_1
    return-void

    .line 237
    .end local v0    # "nextSizeInBytes":I
    .end local v2    # "messageSizeOfNextSpan":I
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "span == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 326
    .local p0, "this":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncReporter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

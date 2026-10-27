.class Lzipkin2/reporter/AsyncReporter$Builder$1;
.super Ljava/lang/Thread;
.source "AsyncReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzipkin2/reporter/AsyncReporter$Builder;->build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzipkin2/reporter/AsyncReporter$Builder;

.field final synthetic val$consumer:Lzipkin2/reporter/BufferNextMessage;

.field final synthetic val$result:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;


# direct methods
.method constructor <init>(Lzipkin2/reporter/AsyncReporter$Builder;Ljava/lang/String;Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;Lzipkin2/reporter/BufferNextMessage;)V
    .locals 0
    .param p1, "this$0"    # Lzipkin2/reporter/AsyncReporter$Builder;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->this$0:Lzipkin2/reporter/AsyncReporter$Builder;

    iput-object p3, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$result:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iput-object p4, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$consumer:Lzipkin2/reporter/BufferNextMessage;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 189
    :goto_0
    :try_start_0
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$result:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object v0, v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$result:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$consumer:Lzipkin2/reporter/BufferNextMessage;

    invoke-virtual {v0, v1}, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->flush(Lzipkin2/reporter/BufferNextMessage;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$consumer:Lzipkin2/reporter/BufferNextMessage;

    invoke-virtual {v0}, Lzipkin2/reporter/BufferNextMessage;->count()I

    move-result v0

    .line 197
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 198
    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->this$0:Lzipkin2/reporter/AsyncReporter$Builder;

    iget-object v1, v1, Lzipkin2/reporter/AsyncReporter$Builder;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v1, v0}, Lzipkin2/reporter/ReporterMetrics;->incrementSpansDropped(I)V

    .line 199
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

    .line 201
    :cond_1
    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$result:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object v1, v1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->close:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 202
    .end local v0    # "count":I
    nop

    .line 203
    return-void

    .line 196
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unexpected error flushing spans"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$consumer:Lzipkin2/reporter/BufferNextMessage;

    invoke-virtual {v1}, Lzipkin2/reporter/BufferNextMessage;->count()I

    move-result v1

    .line 197
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 198
    iget-object v2, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->this$0:Lzipkin2/reporter/AsyncReporter$Builder;

    iget-object v2, v2, Lzipkin2/reporter/AsyncReporter$Builder;->metrics:Lzipkin2/reporter/ReporterMetrics;

    invoke-interface {v2, v1}, Lzipkin2/reporter/ReporterMetrics;->incrementSpansDropped(I)V

    .line 199
    sget-object v2, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " spans due to AsyncReporter.close()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v2, p0, Lzipkin2/reporter/AsyncReporter$Builder$1;->val$result:Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    iget-object v2, v2, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;->close:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 202
    .end local v1    # "count":I
    throw v0
.end method

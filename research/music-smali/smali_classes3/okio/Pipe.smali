.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private canceled:Z

.field private foldedSink:Lokio/Sink;

.field private final maxBufferSize:J

.field private final sink:Lokio/Sink;

.field private sinkClosed:Z

.field private final source:Lokio/Source;

.field private sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    .line 37
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 44
    iget-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 48
    new-instance p1, Lokio/Pipe$sink$1;

    invoke-direct {p1, p0}, Lokio/Pipe$sink$1;-><init>(Lokio/Pipe;)V

    check-cast p1, Lokio/Sink;

    iput-object p1, p0, Lokio/Pipe;->sink:Lokio/Sink;

    .line 124
    new-instance p1, Lokio/Pipe$source$1;

    invoke-direct {p1, p0}, Lokio/Pipe$source$1;-><init>(Lokio/Pipe;)V

    check-cast p1, Lokio/Source;

    iput-object p1, p0, Lokio/Pipe;->source:Lokio/Source;

    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lokio/Pipe;->getMaxBufferSize$okio()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "maxBufferSize < 1: "

    invoke-static {p2, p1}, Lccf;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final forward(Lokio/Sink;Lcas;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lcas<",
            "-",
            "Lokio/Sink;",
            "Lkotlin/w;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v1

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    .line 255
    sget-object v4, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v5

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 257
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 258
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    .line 259
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 210
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/w;->a:Lkotlin/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Lcce;->a(I)V

    .line 265
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 266
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {v0, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_1
    invoke-static {v5}, Lcce;->b(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 263
    invoke-static {v5}, Lcce;->a(I)V

    .line 265
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 266
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {v0, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_2
    invoke-static {v5}, Lcce;->b(I)V

    throw p1

    .line 271
    :cond_3
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 272
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 210
    :cond_4
    :try_start_1
    invoke-interface {p2, p1}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/w;->a:Lkotlin/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5}, Lcce;->a(I)V

    .line 277
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p1}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 278
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 279
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_5
    invoke-static {v5}, Lcce;->b(I)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 275
    invoke-static {v5}, Lcce;->a(I)V

    .line 277
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 278
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 279
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_6
    invoke-static {v5}, Lcce;->b(I)V

    throw p1
.end method


# virtual methods
.method public final -deprecated_sink()Lokio/Sink;
    .locals 1

    .line 219
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final -deprecated_source()Lokio/Source;
    .locals 1

    .line 227
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method

.method public final cancel()V
    .locals 2

    .line 243
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 280
    monitor-enter v0

    const/4 v1, 0x1

    .line 244
    :try_start_0
    invoke-virtual {p0, v1}, Lokio/Pipe;->setCanceled$okio(Z)V

    .line 245
    invoke-virtual {p0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 246
    invoke-virtual {p0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 247
    sget-object v1, Lkotlin/w;->a:Lkotlin/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final fold(Lokio/Sink;)V
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 252
    monitor-enter v0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {p0}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v1

    if-nez v1, :cond_3

    .line 177
    invoke-virtual {p0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0, v2}, Lokio/Pipe;->setSourceClosed$okio(Z)V

    .line 179
    invoke-virtual {p0, p1}, Lokio/Pipe;->setFoldedSink$okio(Lokio/Sink;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 180
    monitor-exit v0

    return-void

    .line 183
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v1

    .line 184
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 185
    invoke-virtual {p0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {p0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 186
    invoke-virtual {p0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 187
    sget-object v4, Lkotlin/w;->a:Lkotlin/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v0

    .line 191
    :try_start_2
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-interface {p1, v3, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    if-eqz v1, :cond_2

    .line 193
    invoke-interface {p1}, Lokio/Sink;->close()V

    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {p1}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 200
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 253
    monitor-enter v0

    .line 201
    :try_start_3
    invoke-virtual {p0, v2}, Lokio/Pipe;->setSourceClosed$okio(Z)V

    .line 202
    invoke-virtual {p0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 203
    sget-object v1, Lkotlin/w;->a:Lkotlin/w;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    .line 253
    throw p1

    :catchall_1
    move-exception p1

    .line 203
    monitor-exit v0

    throw p1

    .line 173
    :cond_3
    :try_start_4
    invoke-virtual {p0, p1}, Lokio/Pipe;->setFoldedSink$okio(Lokio/Sink;)V

    .line 174
    new-instance p1, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "sink already folded"

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 187
    monitor-exit v0

    throw p1
.end method

.method public final getBuffer$okio()Lokio/Buffer;
    .locals 1

    .line 37
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getCanceled$okio()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lokio/Pipe;->canceled:Z

    return v0
.end method

.method public final getFoldedSink$okio()Lokio/Sink;
    .locals 1

    .line 41
    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object v0
.end method

.method public final getMaxBufferSize$okio()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lokio/Pipe;->maxBufferSize:J

    return-wide v0
.end method

.method public final getSinkClosed$okio()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lokio/Pipe;->sinkClosed:Z

    return v0
.end method

.method public final getSourceClosed$okio()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lokio/Pipe;->sourceClosed:Z

    return v0
.end method

.method public final setCanceled$okio(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lokio/Pipe;->canceled:Z

    return-void
.end method

.method public final setFoldedSink$okio(Lokio/Sink;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-void
.end method

.method public final setSinkClosed$okio(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lokio/Pipe;->sinkClosed:Z

    return-void
.end method

.method public final setSourceClosed$okio(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lokio/Pipe;->sourceClosed:Z

    return-void
.end method

.method public final sink()Lokio/Sink;
    .locals 1

    .line 48
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final source()Lokio/Source;
    .locals 1

    .line 124
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method

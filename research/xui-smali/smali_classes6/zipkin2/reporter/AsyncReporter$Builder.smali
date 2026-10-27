.class public final Lzipkin2/reporter/AsyncReporter$Builder;
.super Ljava/lang/Object;
.source "AsyncReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/AsyncReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field closeTimeoutNanos:J

.field messageMaxBytes:I

.field messageTimeoutNanos:J

.field metrics:Lzipkin2/reporter/ReporterMetrics;

.field queuedMaxBytes:I

.field queuedMaxSpans:I

.field final sender:Lzipkin2/reporter/Sender;


# direct methods
.method constructor <init>(Lzipkin2/reporter/Sender;)V
    .locals 5
    .param p1, "sender"    # Lzipkin2/reporter/Sender;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lzipkin2/reporter/ReporterMetrics;->NOOP_METRICS:Lzipkin2/reporter/ReporterMetrics;

    iput-object v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->metrics:Lzipkin2/reporter/ReporterMetrics;

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iput-wide v3, p0, Lzipkin2/reporter/AsyncReporter$Builder;->messageTimeoutNanos:J

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->closeTimeoutNanos:J

    .line 86
    const/16 v0, 0x2710

    iput v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->queuedMaxSpans:I

    .line 87
    invoke-static {}, Lzipkin2/reporter/AsyncReporter$Builder;->onePercentOfMemory()I

    move-result v0

    iput v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->queuedMaxBytes:I

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    .line 98
    invoke-virtual {p1}, Lzipkin2/reporter/Sender;->messageMaxBytes()I

    move-result v0

    iput v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->messageMaxBytes:I

    .line 99
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sender == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static onePercentOfMemory()I
    .locals 6

    .line 90
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 92
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/32 v4, -0x80000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2
.end method


# virtual methods
.method public build()Lzipkin2/reporter/AsyncReporter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/reporter/AsyncReporter<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object v0, Lzipkin2/reporter/AsyncReporter$1;->$SwitchMap$zipkin2$codec$Encoding:[I

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v1}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v1

    invoke-virtual {v1}, Lzipkin2/codec/Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v1}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v1

    invoke-virtual {v1}, Lzipkin2/codec/Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_0
    sget-object v0, Lzipkin2/codec/SpanBytesEncoder;->THRIFT:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {p0, v0}, Lzipkin2/reporter/AsyncReporter$Builder;->build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;

    move-result-object v0

    return-object v0

    .line 164
    :pswitch_1
    sget-object v0, Lzipkin2/codec/SpanBytesEncoder;->PROTO3:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {p0, v0}, Lzipkin2/reporter/AsyncReporter$Builder;->build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;

    move-result-object v0

    return-object v0

    .line 162
    :pswitch_2
    sget-object v0, Lzipkin2/codec/SpanBytesEncoder;->JSON_V2:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {p0, v0}, Lzipkin2/reporter/AsyncReporter$Builder;->build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lzipkin2/codec/BytesEncoder<",
            "TS;>;)",
            "Lzipkin2/reporter/AsyncReporter<",
            "TS;>;"
        }
    .end annotation

    .line 174
    .local p1, "encoder":Lzipkin2/codec/BytesEncoder;, "Lzipkin2/codec/BytesEncoder<TS;>;"
    if-eqz p1, :cond_2

    .line 176
    invoke-interface {p1}, Lzipkin2/codec/BytesEncoder;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v1}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 181
    new-instance v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    invoke-direct {v0, p0, p1}, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;-><init>(Lzipkin2/reporter/AsyncReporter$Builder;Lzipkin2/codec/BytesEncoder;)V

    .line 183
    .local v0, "result":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    iget-wide v3, p0, Lzipkin2/reporter/AsyncReporter$Builder;->messageTimeoutNanos:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 184
    nop

    .line 185
    invoke-interface {p1}, Lzipkin2/codec/BytesEncoder;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v1

    iget v3, p0, Lzipkin2/reporter/AsyncReporter$Builder;->messageMaxBytes:I

    iget-wide v4, p0, Lzipkin2/reporter/AsyncReporter$Builder;->messageTimeoutNanos:J

    invoke-static {v1, v3, v4, v5}, Lzipkin2/reporter/BufferNextMessage;->create(Lzipkin2/codec/Encoding;IJ)Lzipkin2/reporter/BufferNextMessage;

    move-result-object v1

    .line 186
    .local v1, "consumer":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    new-instance v3, Lzipkin2/reporter/AsyncReporter$Builder$1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncReporter{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0, v1}, Lzipkin2/reporter/AsyncReporter$Builder$1;-><init>(Lzipkin2/reporter/AsyncReporter$Builder;Ljava/lang/String;Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;Lzipkin2/reporter/BufferNextMessage;)V

    .line 205
    .local v3, "flushThread":Ljava/lang/Thread;
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 206
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 208
    .end local v1    # "consumer":Lzipkin2/reporter/BufferNextMessage;, "Lzipkin2/reporter/BufferNextMessage<TS;>;"
    .end local v3    # "flushThread":Ljava/lang/Thread;
    :cond_0
    return-object v0

    .line 177
    .end local v0    # "result":Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;, "Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter<TS;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 178
    invoke-interface {p1}, Lzipkin2/codec/BytesEncoder;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v3}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v3

    aput-object v3, v1, v2

    .line 177
    const-string v2, "Encoder doesn\'t match Sender: %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoder == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeTimeout(JLjava/util/concurrent/TimeUnit;)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 140
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 141
    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->closeTimeoutNanos:J

    .line 143
    return-object p0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeTimeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageMaxBytes(I)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 3
    .param p1, "messageMaxBytes"    # I

    .line 115
    if-ltz p1, :cond_0

    .line 118
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->sender:Lzipkin2/reporter/Sender;

    invoke-virtual {v0}, Lzipkin2/reporter/Sender;->messageMaxBytes()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->messageMaxBytes:I

    .line 119
    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageMaxBytes < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageTimeout(JLjava/util/concurrent/TimeUnit;)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 133
    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->messageTimeoutNanos:J

    .line 135
    return-object p0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageTimeout < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public metrics(Lzipkin2/reporter/ReporterMetrics;)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 2
    .param p1, "metrics"    # Lzipkin2/reporter/ReporterMetrics;

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->metrics:Lzipkin2/reporter/ReporterMetrics;

    .line 107
    return-object p0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "metrics == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queuedMaxBytes(I)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 0
    .param p1, "queuedMaxBytes"    # I

    .line 154
    iput p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->queuedMaxBytes:I

    .line 155
    return-object p0
.end method

.method public queuedMaxSpans(I)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 0
    .param p1, "queuedMaxSpans"    # I

    .line 148
    iput p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->queuedMaxSpans:I

    .line 149
    return-object p0
.end method

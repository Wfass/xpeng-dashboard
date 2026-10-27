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
.field final a:Lzipkin2/reporter/Sender;

.field b:Lzipkin2/reporter/ReporterMetrics;

.field c:I

.field d:J

.field e:J

.field f:I

.field g:I


# direct methods
.method constructor <init>(Lzipkin2/reporter/Sender;)V
    .locals 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lzipkin2/reporter/ReporterMetrics;->NOOP_METRICS:Lzipkin2/reporter/ReporterMetrics;

    iput-object v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->b:Lzipkin2/reporter/ReporterMetrics;

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iput-wide v3, p0, Lzipkin2/reporter/AsyncReporter$Builder;->d:J

    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->e:J

    const/16 v0, 0x2710

    .line 86
    iput v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->f:I

    .line 87
    invoke-static {}, Lzipkin2/reporter/AsyncReporter$Builder;->a()I

    move-result v0

    iput v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->g:I

    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->a:Lzipkin2/reporter/Sender;

    .line 98
    invoke-virtual {p1}, Lzipkin2/reporter/Sender;->messageMaxBytes()I

    move-result p1

    iput p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->c:I

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sender == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a()I
    .locals 4

    .line 90
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/32 v2, 0x7fffffff

    .line 92
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
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
    sget-object v0, Lzipkin2/reporter/AsyncReporter$1;->a:[I

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->a:Lzipkin2/reporter/Sender;

    invoke-virtual {v1}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v1

    invoke-virtual {v1}, Lzipkin2/codec/Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lzipkin2/codec/SpanBytesEncoder;->THRIFT:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {p0, v0}, Lzipkin2/reporter/AsyncReporter$Builder;->build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->a:Lzipkin2/reporter/Sender;

    invoke-virtual {v1}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v1

    invoke-virtual {v1}, Lzipkin2/codec/Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    sget-object v0, Lzipkin2/codec/SpanBytesEncoder;->PROTO3:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {p0, v0}, Lzipkin2/reporter/AsyncReporter$Builder;->build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;

    move-result-object v0

    return-object v0

    .line 162
    :cond_2
    sget-object v0, Lzipkin2/codec/SpanBytesEncoder;->JSON_V2:Lzipkin2/codec/SpanBytesEncoder;

    invoke-virtual {p0, v0}, Lzipkin2/reporter/AsyncReporter$Builder;->build(Lzipkin2/codec/BytesEncoder;)Lzipkin2/reporter/AsyncReporter;

    move-result-object v0

    return-object v0
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

    if-eqz p1, :cond_2

    .line 176
    invoke-interface {p1}, Lzipkin2/codec/BytesEncoder;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->a:Lzipkin2/reporter/Sender;

    invoke-virtual {v1}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 181
    new-instance v0, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;

    invoke-direct {v0, p0, p1}, Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;-><init>(Lzipkin2/reporter/AsyncReporter$Builder;Lzipkin2/codec/BytesEncoder;)V

    .line 183
    iget-wide v3, p0, Lzipkin2/reporter/AsyncReporter$Builder;->d:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 185
    invoke-interface {p1}, Lzipkin2/codec/BytesEncoder;->encoding()Lzipkin2/codec/Encoding;

    move-result-object p1

    iget v1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->c:I

    iget-wide v3, p0, Lzipkin2/reporter/AsyncReporter$Builder;->d:J

    invoke-static {p1, v1, v3, v4}, Lzipkin2/reporter/BufferNextMessage;->a(Lzipkin2/codec/Encoding;IJ)Lzipkin2/reporter/BufferNextMessage;

    move-result-object p1

    .line 186
    new-instance v1, Lzipkin2/reporter/AsyncReporter$Builder$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncReporter{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lzipkin2/reporter/AsyncReporter$Builder;->a:Lzipkin2/reporter/Sender;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0, p1}, Lzipkin2/reporter/AsyncReporter$Builder$1;-><init>(Lzipkin2/reporter/AsyncReporter$Builder;Ljava/lang/String;Lzipkin2/reporter/AsyncReporter$BoundedAsyncReporter;Lzipkin2/reporter/BufferNextMessage;)V

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-object v0

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 178
    invoke-interface {p1}, Lzipkin2/codec/BytesEncoder;->encoding()Lzipkin2/codec/Encoding;

    move-result-object p1

    aput-object p1, v1, v3

    iget-object p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->a:Lzipkin2/reporter/Sender;

    invoke-virtual {p1}, Lzipkin2/reporter/Sender;->encoding()Lzipkin2/codec/Encoding;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Encoder doesn\'t match Sender: %s %s"

    .line 177
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "encoder == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public closeTimeout(JLjava/util/concurrent/TimeUnit;)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->e:J

    return-object p0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeTimeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public messageMaxBytes(I)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 3

    if-ltz p1, :cond_0

    .line 118
    iget-object v0, p0, Lzipkin2/reporter/AsyncReporter$Builder;->a:Lzipkin2/reporter/Sender;

    invoke-virtual {v0}, Lzipkin2/reporter/Sender;->messageMaxBytes()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->c:I

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

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public messageTimeout(JLjava/util/concurrent/TimeUnit;)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-eqz p3, :cond_0

    .line 134
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->d:J

    return-object p0

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "messageTimeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public metrics(Lzipkin2/reporter/ReporterMetrics;)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->b:Lzipkin2/reporter/ReporterMetrics;

    return-object p0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "metrics == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public queuedMaxBytes(I)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 0

    .line 154
    iput p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->g:I

    return-object p0
.end method

.method public queuedMaxSpans(I)Lzipkin2/reporter/AsyncReporter$Builder;
    .locals 0

    .line 148
    iput p1, p0, Lzipkin2/reporter/AsyncReporter$Builder;->f:I

    return-object p0
.end method

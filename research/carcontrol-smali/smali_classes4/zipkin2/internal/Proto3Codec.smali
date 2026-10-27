.class public final Lzipkin2/internal/Proto3Codec;
.super Ljava/lang/Object;
.source "Proto3Codec.java"


# instance fields
.field final writer:Lzipkin2/internal/Proto3SpanWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lzipkin2/internal/Proto3SpanWriter;

    invoke-direct {v0}, Lzipkin2/internal/Proto3SpanWriter;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    return-void
.end method

.method static exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;
    .locals 4

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Malformed"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move-object v0, v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s reading %s from proto3"

    .line 80
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static read([BLjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 45
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-direct {v0, p0, v1}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 48
    :try_start_0
    sget-object p0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {p0, v0}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 50
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Span"

    .line 53
    invoke-static {p1, p0}, Lzipkin2/internal/Proto3Codec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static readList([BLjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 62
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    new-instance v2, Lzipkin2/internal/Buffer;

    invoke-direct {v2, p0, v1}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 66
    :goto_0
    :try_start_0
    iget p0, v2, Lzipkin2/internal/Buffer;->pos:I

    if-ge p0, v0, :cond_2

    .line 67
    sget-object p0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {p0, v2}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 69
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "List<Span>"

    .line 72
    invoke-static {p1, p0}, Lzipkin2/internal/Proto3Codec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public static readOne([B)Lzipkin2/Span;
    .locals 3
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 58
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    new-instance v1, Lzipkin2/internal/Buffer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzipkin2/internal/Buffer;-><init>([BI)V

    invoke-virtual {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 1

    .line 29
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3SpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public write(Lzipkin2/Span;)[B
    .locals 1

    .line 33
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3SpanWriter;->write(Lzipkin2/Span;)[B

    move-result-object p1

    return-object p1
.end method

.method public writeList(Ljava/util/List;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;[BI)I"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1, p2, p3}, Lzipkin2/internal/Proto3SpanWriter;->writeList(Ljava/util/List;[BI)I

    move-result p1

    return p1
.end method

.method public writeList(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)[B"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3SpanWriter;->writeList(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

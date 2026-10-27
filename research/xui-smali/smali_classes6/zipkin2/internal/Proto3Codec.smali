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
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cause":Ljava/lang/String;
    :goto_0
    const-string v1, "Malformed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v0, "Malformed"

    .line 80
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "%s reading %s from proto3"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static read([BLjava/util/Collection;)Z
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 45
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-direct {v0, p0, v1}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 48
    .local v0, "buffer":Lzipkin2/internal/Buffer;
    :try_start_0
    sget-object v2, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v2, v0}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;

    move-result-object v2

    .line 49
    .local v2, "span":Lzipkin2/Span;
    if-nez v2, :cond_1

    return v1

    .line 50
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/4 v1, 0x1

    return v1

    .line 52
    .end local v2    # "span":Lzipkin2/Span;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Span"

    invoke-static {v2, v1}, Lzipkin2/internal/Proto3Codec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public static readList([BLjava/util/Collection;)Z
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 62
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    array-length v0, p0

    .line 63
    .local v0, "length":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    new-instance v2, Lzipkin2/internal/Buffer;

    invoke-direct {v2, p0, v1}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 66
    .local v2, "buffer":Lzipkin2/internal/Buffer;
    :goto_0
    :try_start_0
    iget v3, v2, Lzipkin2/internal/Buffer;->pos:I

    if-ge v3, v0, :cond_2

    .line 67
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v3, v2}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;

    move-result-object v3

    .line 68
    .local v3, "span":Lzipkin2/Span;
    if-nez v3, :cond_1

    return v1

    .line 69
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v3    # "span":Lzipkin2/Span;
    goto :goto_0

    .line 73
    :cond_2
    nop

    .line 74
    const/4 v1, 0x1

    return v1

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "List<Span>"

    invoke-static {v3, v1}, Lzipkin2/internal/Proto3Codec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public static readOne([B)Lzipkin2/Span;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 58
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    new-instance v1, Lzipkin2/internal/Buffer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lzipkin2/internal/Buffer;-><init>([BI)V

    invoke-virtual {v0, v1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->read(Lzipkin2/internal/Buffer;)Lzipkin2/Span;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 1
    .param p1, "input"    # Lzipkin2/Span;

    .line 29
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3SpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result v0

    return v0
.end method

.method public write(Lzipkin2/Span;)[B
    .locals 1
    .param p1, "span"    # Lzipkin2/Span;

    .line 33
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3SpanWriter;->write(Lzipkin2/Span;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeList(Ljava/util/List;[BI)I
    .locals 1
    .param p2, "out"    # [B
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;[BI)I"
        }
    .end annotation

    .line 41
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1, p2, p3}, Lzipkin2/internal/Proto3SpanWriter;->writeList(Ljava/util/List;[BI)I

    move-result v0

    return v0
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
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    iget-object v0, p0, Lzipkin2/internal/Proto3Codec;->writer:Lzipkin2/internal/Proto3SpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3SpanWriter;->writeList(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

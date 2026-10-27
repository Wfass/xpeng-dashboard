.class final enum Lzipkin2/codec/SpanBytesDecoder$1;
.super Lzipkin2/codec/SpanBytesDecoder;
.source "SpanBytesDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/codec/SpanBytesDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzipkin2/codec/SpanBytesDecoder;-><init>(Ljava/lang/String;ILzipkin2/codec/SpanBytesDecoder$1;)V

    return-void
.end method


# virtual methods
.method public decode([BLjava/util/Collection;)Z
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 42
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    invoke-virtual {p0, p1}, Lzipkin2/codec/SpanBytesDecoder$1;->decodeOne([B)Lzipkin2/Span;

    move-result-object v0

    .line 43
    .local v0, "result":Lzipkin2/Span;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 44
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    const/4 v1, 0x1

    return v1
.end method

.method public decodeList([B)Ljava/util/List;
    .locals 1
    .param p1, "spans"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lzipkin2/codec/SpanBytesDecoder$1;->decodeList(Lzipkin2/codec/SpanBytesDecoder;[B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public decodeList([BLjava/util/Collection;)Z
    .locals 1
    .param p1, "spans"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 50
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    new-instance v0, Lzipkin2/internal/V1JsonSpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V1JsonSpanReader;-><init>()V

    invoke-virtual {v0, p1, p2}, Lzipkin2/internal/V1JsonSpanReader;->readList([BLjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic decodeOne([B)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lzipkin2/codec/SpanBytesDecoder$1;->decodeOne([B)Lzipkin2/Span;

    move-result-object p1

    return-object p1
.end method

.method public decodeOne([B)Lzipkin2/Span;
    .locals 3
    .param p1, "span"    # [B

    .line 55
    new-instance v0, Lzipkin2/internal/V1JsonSpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V1JsonSpanReader;-><init>()V

    invoke-static {v0, p1}, Lzipkin2/internal/JsonCodec;->readOne(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/v1/V1Span;

    .line 56
    .local v0, "v1":Lzipkin2/v1/V1Span;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v1, "out":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V

    .line 58
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span;

    return-object v2
.end method

.method public encoding()Lzipkin2/codec/Encoding;
    .locals 1

    .line 37
    sget-object v0, Lzipkin2/codec/Encoding;->JSON:Lzipkin2/codec/Encoding;

    return-object v0
.end method

.class final enum Lzipkin2/codec/SpanBytesDecoder$2;
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

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzipkin2/codec/SpanBytesDecoder;-><init>(Ljava/lang/String;ILzipkin2/codec/SpanBytesDecoder$1;)V

    return-void
.end method


# virtual methods
.method public decode([BLjava/util/Collection;)Z
    .locals 1
    .param p1, "span"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    invoke-static {p1, p2}, Lzipkin2/internal/ThriftCodec;->read([BLjava/util/Collection;)Z

    move-result v0

    return v0
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

    .line 90
    invoke-static {p0, p1}, Lzipkin2/codec/SpanBytesDecoder$2;->decodeList(Lzipkin2/codec/SpanBytesDecoder;[B)Ljava/util/List;

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

    .line 80
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    invoke-static {p1, p2}, Lzipkin2/internal/ThriftCodec;->readList([BLjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic decodeOne([B)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lzipkin2/codec/SpanBytesDecoder$2;->decodeOne([B)Lzipkin2/Span;

    move-result-object p1

    return-object p1
.end method

.method public decodeOne([B)Lzipkin2/Span;
    .locals 1
    .param p1, "span"    # [B

    .line 85
    invoke-static {p1}, Lzipkin2/internal/ThriftCodec;->readOne([B)Lzipkin2/Span;

    move-result-object v0

    return-object v0
.end method

.method public encoding()Lzipkin2/codec/Encoding;
    .locals 1

    .line 70
    sget-object v0, Lzipkin2/codec/Encoding;->THRIFT:Lzipkin2/codec/Encoding;

    return-object v0
.end method

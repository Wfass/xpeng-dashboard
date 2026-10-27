.class final enum Lzipkin2/codec/SpanBytesDecoder$3;
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

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lzipkin2/codec/SpanBytesDecoder;-><init>(Ljava/lang/String;ILzipkin2/codec/SpanBytesDecoder$1;)V

    return-void
.end method


# virtual methods
.method public decode([BLjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 102
    new-instance v0, Lzipkin2/internal/V2SpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V2SpanReader;-><init>()V

    invoke-static {v0, p1, p2}, Lzipkin2/internal/JsonCodec;->read(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public decodeList([B)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 118
    invoke-static {p0, p1}, Lzipkin2/codec/SpanBytesDecoder$3;->a(Lzipkin2/codec/SpanBytesDecoder;[B)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public decodeList([BLjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 107
    new-instance v0, Lzipkin2/internal/V2SpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V2SpanReader;-><init>()V

    invoke-static {v0, p1, p2}, Lzipkin2/internal/JsonCodec;->readList(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[BLjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decodeOne([B)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lzipkin2/codec/SpanBytesDecoder$3;->decodeOne([B)Lzipkin2/Span;

    move-result-object p1

    return-object p1
.end method

.method public decodeOne([B)Lzipkin2/Span;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 113
    new-instance v0, Lzipkin2/internal/V2SpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V2SpanReader;-><init>()V

    invoke-static {v0, p1}, Lzipkin2/internal/JsonCodec;->readOne(Lzipkin2/internal/JsonCodec$JsonReaderAdapter;[B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzipkin2/Span;

    return-object p1
.end method

.method public encoding()Lzipkin2/codec/Encoding;
    .locals 1

    .line 97
    sget-object v0, Lzipkin2/codec/Encoding;->JSON:Lzipkin2/codec/Encoding;

    return-object v0
.end method

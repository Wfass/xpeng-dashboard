.class final enum Lzipkin2/codec/SpanBytesEncoder$4;
.super Lzipkin2/codec/SpanBytesEncoder;
.source "SpanBytesEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/codec/SpanBytesEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# instance fields
.field final codec:Lzipkin2/internal/Proto3Codec;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v0}, Lzipkin2/codec/SpanBytesEncoder;-><init>(Ljava/lang/String;ILzipkin2/codec/SpanBytesEncoder$1;)V

    .line 111
    new-instance p1, Lzipkin2/internal/Proto3Codec;

    invoke-direct {p1}, Lzipkin2/internal/Proto3Codec;-><init>()V

    iput-object p1, p0, Lzipkin2/codec/SpanBytesEncoder$4;->codec:Lzipkin2/internal/Proto3Codec;

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;)[B
    .locals 0

    .line 110
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/codec/SpanBytesEncoder$4;->encode(Lzipkin2/Span;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode(Lzipkin2/Span;)[B
    .locals 1

    .line 125
    iget-object v0, p0, Lzipkin2/codec/SpanBytesEncoder$4;->codec:Lzipkin2/internal/Proto3Codec;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3Codec;->write(Lzipkin2/Span;)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeList(Ljava/util/List;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;[BI)I"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lzipkin2/codec/SpanBytesEncoder$4;->codec:Lzipkin2/internal/Proto3Codec;

    invoke-virtual {v0, p1, p2, p3}, Lzipkin2/internal/Proto3Codec;->writeList(Ljava/util/List;[BI)I

    move-result p1

    return p1
.end method

.method public encodeList(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)[B"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lzipkin2/codec/SpanBytesEncoder$4;->codec:Lzipkin2/internal/Proto3Codec;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3Codec;->writeList(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public encoding()Lzipkin2/codec/Encoding;
    .locals 1

    .line 115
    sget-object v0, Lzipkin2/codec/Encoding;->PROTO3:Lzipkin2/codec/Encoding;

    return-object v0
.end method

.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 110
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/codec/SpanBytesEncoder$4;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 1

    .line 120
    iget-object v0, p0, Lzipkin2/codec/SpanBytesEncoder$4;->codec:Lzipkin2/internal/Proto3Codec;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3Codec;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

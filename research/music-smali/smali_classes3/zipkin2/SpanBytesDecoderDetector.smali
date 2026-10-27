.class public final Lzipkin2/SpanBytesDecoderDetector;
.super Ljava/lang/Object;
.source "SpanBytesDecoderDetector.java"


# static fields
.field static final a:[B

.field static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    .line 47
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lzipkin2/SpanBytesDecoderDetector;->a:[B

    const/4 v0, 0x6

    .line 55
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lzipkin2/SpanBytesDecoderDetector;->b:[B

    return-void

    :array_0
    .array-data 1
        0x45t
        0x6et
        0x64t
        0x70t
        0x6ft
        0x69t
        0x6et
        0x74t
        0x22t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x74t
        0x61t
        0x67t
        0x73t
        0x22t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([B)Lzipkin2/codec/BytesDecoder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lzipkin2/codec/BytesDecoder<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    aget-byte v1, p0, v0

    const/16 v2, 0x10

    if-gt v1, v2, :cond_1

    .line 81
    invoke-static {p0}, Lzipkin2/SpanBytesDecoderDetector;->b([B)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lzipkin2/codec/SpanBytesDecoder;->PROTO3:Lzipkin2/codec/SpanBytesDecoder;

    return-object p0

    .line 82
    :cond_0
    sget-object p0, Lzipkin2/codec/SpanBytesDecoder;->THRIFT:Lzipkin2/codec/SpanBytesDecoder;

    return-object p0

    .line 83
    :cond_1
    aget-byte v1, p0, v0

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3

    aget-byte v0, p0, v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not detect the span format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_3
    :goto_0
    sget-object v0, Lzipkin2/SpanBytesDecoderDetector;->a:[B

    invoke-static {p0, v0}, Lzipkin2/SpanBytesDecoderDetector;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

    return-object p0

    .line 87
    :cond_4
    sget-object v0, Lzipkin2/SpanBytesDecoderDetector;->b:[B

    invoke-static {p0, v0}, Lzipkin2/SpanBytesDecoderDetector;->a([B[B)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

    return-object p0

    .line 88
    :cond_5
    sget-object p0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V1:Lzipkin2/codec/SpanBytesDecoder;

    return-object p0
.end method

.method static a([B[B)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 93
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 94
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    add-int v4, v1, v2

    .line 95
    aget-byte v4, p0, v4

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    return v0
.end method

.method static b([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 106
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    aget-byte p0, p0, v2

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static decoderForListMessage([B)Lzipkin2/codec/BytesDecoder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lzipkin2/codec/BytesDecoder<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lzipkin2/SpanBytesDecoderDetector;->a([B)Lzipkin2/codec/BytesDecoder;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    aget-byte v2, p0, v1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    invoke-static {p0}, Lzipkin2/SpanBytesDecoderDetector;->b([B)Z

    move-result v2

    if-nez v2, :cond_1

    aget-byte p0, p0, v1

    const/16 v1, 0x5b

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected json, proto3 or thrift list encoding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static decoderForMessage([B)Lzipkin2/codec/BytesDecoder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lzipkin2/codec/BytesDecoder<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lzipkin2/SpanBytesDecoderDetector;->a([B)Lzipkin2/codec/BytesDecoder;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    aget-byte v2, p0, v1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    aget-byte p0, p0, v1

    const/16 v1, 0x5b

    if-eq p0, v1, :cond_1

    .line 63
    sget-object p0, Lzipkin2/codec/SpanBytesDecoder;->JSON_V2:Lzipkin2/codec/SpanBytesDecoder;

    if-eq v0, p0, :cond_0

    sget-object p0, Lzipkin2/codec/SpanBytesDecoder;->PROTO3:Lzipkin2/codec/SpanBytesDecoder;

    if-eq v0, p0, :cond_0

    return-object v0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "v2 formats should only be used with list messages"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected json or thrift object, not list encoding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

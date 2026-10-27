.class final Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;
.super Ljava/lang/Object;
.source "V1ThriftSpanReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/V1ThriftSpanReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnnotationReader"
.end annotation


# static fields
.field static final ENDPOINT:Lzipkin2/internal/ThriftField;

.field static final TIMESTAMP:Lzipkin2/internal/ThriftField;

.field static final VALUE:Lzipkin2/internal/ThriftField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    .line 97
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->VALUE:Lzipkin2/internal/ThriftField;

    .line 98
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xc

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->ENDPOINT:Lzipkin2/internal/ThriftField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Ljava/nio/ByteBuffer;Lzipkin2/v1/V1Span$Builder;)V
    .locals 7
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "builder"    # Lzipkin2/v1/V1Span$Builder;

    .line 101
    const-wide/16 v0, 0x0

    .line 102
    .local v0, "timestamp":J
    const/4 v2, 0x0

    .line 103
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 107
    .local v3, "endpoint":Lzipkin2/Endpoint;
    :goto_0
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v4

    .line 108
    .local v4, "thriftField":Lzipkin2/internal/ThriftField;
    iget-byte v5, v4, Lzipkin2/internal/ThriftField;->type:B

    if-nez v5, :cond_2

    .line 121
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p1, v0, v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 123
    return-void

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 110
    :cond_2
    sget-object v5, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    invoke-virtual {v4, v5}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_0

    .line 112
    :cond_3
    sget-object v5, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->VALUE:Lzipkin2/internal/ThriftField;

    invoke-virtual {v4, v5}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 113
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 114
    :cond_4
    sget-object v5, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->ENDPOINT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v4, v5}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 115
    invoke-static {p0}, Lzipkin2/internal/ThriftEndpointCodec;->read(Ljava/nio/ByteBuffer;)Lzipkin2/Endpoint;

    move-result-object v3

    goto :goto_0

    .line 117
    :cond_5
    iget-byte v5, v4, Lzipkin2/internal/ThriftField;->type:B

    invoke-static {p0, v5}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;B)V

    goto :goto_0
.end method

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
.field static final a:Lzipkin2/internal/ThriftField;

.field static final b:Lzipkin2/internal/ThriftField;

.field static final c:Lzipkin2/internal/ThriftField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->a:Lzipkin2/internal/ThriftField;

    .line 97
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->b:Lzipkin2/internal/ThriftField;

    .line 98
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xc

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->c:Lzipkin2/internal/ThriftField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;Lzipkin2/v1/V1Span$Builder;)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v5, v0

    move-wide v3, v1

    .line 107
    :goto_0
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->a(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v6

    .line 108
    iget-byte v7, v6, Lzipkin2/internal/ThriftField;->a:B

    if-nez v7, :cond_2

    cmp-long p0, v3, v1

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p1, v3, v4, v0, v5}, Lzipkin2/v1/V1Span$Builder;->addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    :cond_1
    :goto_1
    return-void

    .line 110
    :cond_2
    sget-object v7, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->a:Lzipkin2/internal/ThriftField;

    invoke-virtual {v6, v7}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/ThriftField;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    goto :goto_0

    .line 112
    :cond_3
    sget-object v7, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->b:Lzipkin2/internal/ThriftField;

    invoke-virtual {v6, v7}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/ThriftField;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->c(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_4
    sget-object v7, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->c:Lzipkin2/internal/ThriftField;

    invoke-virtual {v6, v7}, Lzipkin2/internal/ThriftField;->a(Lzipkin2/internal/ThriftField;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 115
    invoke-static {p0}, Lzipkin2/internal/ThriftEndpointCodec;->a(Ljava/nio/ByteBuffer;)Lzipkin2/Endpoint;

    move-result-object v5

    goto :goto_0

    .line 117
    :cond_5
    iget-byte v6, v6, Lzipkin2/internal/ThriftField;->a:B

    invoke-static {p0, v6}, Lzipkin2/internal/ThriftCodec;->a(Ljava/nio/ByteBuffer;B)V

    goto :goto_0
.end method

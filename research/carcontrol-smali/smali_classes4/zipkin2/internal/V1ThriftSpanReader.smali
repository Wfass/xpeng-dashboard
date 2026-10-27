.class public final Lzipkin2/internal/V1ThriftSpanReader;
.super Ljava/lang/Object;
.source "V1ThriftSpanReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;,
        Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;
    }
.end annotation


# instance fields
.field builder:Lzipkin2/v1/V1Span$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lzipkin2/v1/V1Span;->newBuilder()Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    return-void
.end method

.method public static create()Lzipkin2/internal/V1ThriftSpanReader;
    .locals 1

    .line 43
    new-instance v0, Lzipkin2/internal/V1ThriftSpanReader;

    invoke-direct {v0}, Lzipkin2/internal/V1ThriftSpanReader;-><init>()V

    return-object v0
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)Lzipkin2/v1/V1Span;
    .locals 4

    .line 49
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lzipkin2/v1/V1Span;->newBuilder()Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lzipkin2/v1/V1Span$Builder;->clear()Lzipkin2/v1/V1Span$Builder;

    .line 58
    :cond_1
    :goto_0
    invoke-static {p1}, Lzipkin2/internal/ThriftField;->read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v0

    .line 59
    iget-byte v1, v0, Lzipkin2/internal/ThriftField;->type:B

    if-nez v1, :cond_2

    .line 92
    iget-object p1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/v1/V1Span$Builder;->build()Lzipkin2/v1/V1Span;

    move-result-object p1

    return-object p1

    .line 61
    :cond_2
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID_HIGH:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->traceIdHigh(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 63
    :cond_3
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->traceId(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 65
    :cond_4
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->NAME:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 66
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-static {p1}, Lzipkin2/internal/ThriftCodec;->readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->name(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 67
    :cond_5
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 68
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->id(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 69
    :cond_6
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->PARENT_ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->parentId(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 71
    :cond_7
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->ANNOTATIONS:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 72
    invoke-static {p1}, Lzipkin2/internal/ThriftCodec;->readListLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 74
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-static {p1, v1}, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->read(Ljava/nio/ByteBuffer;Lzipkin2/v1/V1Span$Builder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_8
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->BINARY_ANNOTATIONS:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 77
    invoke-static {p1}, Lzipkin2/internal/ThriftCodec;->readListLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_1

    .line 79
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-static {p1, v1}, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->read(Ljava/nio/ByteBuffer;Lzipkin2/v1/V1Span$Builder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    :cond_9
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->DEBUG:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 82
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    move v2, v3

    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_0

    .line 83
    :cond_b
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 84
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->timestamp(J)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_0

    .line 85
    :cond_c
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->DURATION:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 86
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->duration(J)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_0

    .line 88
    :cond_d
    iget-byte v0, v0, Lzipkin2/internal/ThriftField;->type:B

    invoke-static {p1, v0}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;B)V

    goto/16 :goto_0
.end method

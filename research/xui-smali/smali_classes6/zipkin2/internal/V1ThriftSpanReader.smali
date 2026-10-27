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

    .line 172
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
    .locals 5
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

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
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v0}, Lzipkin2/v1/V1Span$Builder;->clear()Lzipkin2/v1/V1Span$Builder;

    .line 58
    :goto_0
    invoke-static {p1}, Lzipkin2/internal/ThriftField;->read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v0

    .line 59
    .local v0, "thriftField":Lzipkin2/internal/ThriftField;
    iget-byte v1, v0, Lzipkin2/internal/ThriftField;->type:B

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v1}, Lzipkin2/v1/V1Span$Builder;->build()Lzipkin2/v1/V1Span;

    move-result-object v1

    return-object v1

    .line 61
    :cond_1
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID_HIGH:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->traceIdHigh(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 63
    :cond_2
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->traceId(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 65
    :cond_3
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->NAME:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-static {p1}, Lzipkin2/internal/ThriftCodec;->readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/v1/V1Span$Builder;->name(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 67
    :cond_4
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->id(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 69
    :cond_5
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->PARENT_ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->parentId(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 71
    :cond_6
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->ANNOTATIONS:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 72
    invoke-static {p1}, Lzipkin2/internal/ThriftCodec;->readListLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 73
    .local v1, "length":I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 74
    iget-object v3, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-static {p1, v3}, Lzipkin2/internal/V1ThriftSpanReader$AnnotationReader;->read(Ljava/nio/ByteBuffer;Lzipkin2/v1/V1Span$Builder;)V

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_0

    :cond_8
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->BINARY_ANNOTATIONS:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 77
    invoke-static {p1}, Lzipkin2/internal/ThriftCodec;->readListLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 78
    .restart local v1    # "length":I
    nop

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_9

    .line 79
    iget-object v3, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-static {p1, v3}, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->read(Ljava/nio/ByteBuffer;Lzipkin2/v1/V1Span$Builder;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_9
    goto/16 :goto_0

    :cond_a
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->DEBUG:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 82
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    move v2, v4

    nop

    :cond_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/v1/V1Span$Builder;->debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_0

    .line 83
    :cond_c
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 84
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->timestamp(J)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_0

    .line 85
    :cond_d
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter;->DURATION:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, v1}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 86
    iget-object v1, p0, Lzipkin2/internal/V1ThriftSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->duration(J)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_0

    .line 88
    :cond_e
    iget-byte v1, v0, Lzipkin2/internal/ThriftField;->type:B

    invoke-static {p1, v1}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;B)V

    goto/16 :goto_0
.end method

.class final Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;
.super Ljava/lang/Object;
.source "V1ThriftSpanReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/V1ThriftSpanReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BinaryAnnotationReader"
.end annotation


# static fields
.field static final ENDPOINT:Lzipkin2/internal/ThriftField;

.field static final KEY:Lzipkin2/internal/ThriftField;

.field static final TYPE:Lzipkin2/internal/ThriftField;

.field static final VALUE:Lzipkin2/internal/ThriftField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 127
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->KEY:Lzipkin2/internal/ThriftField;

    .line 128
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->VALUE:Lzipkin2/internal/ThriftField;

    .line 129
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->TYPE:Lzipkin2/internal/ThriftField;

    .line 130
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xc

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->ENDPOINT:Lzipkin2/internal/ThriftField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Ljava/nio/ByteBuffer;Lzipkin2/v1/V1Span$Builder;)V
    .locals 9
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "builder"    # Lzipkin2/v1/V1Span$Builder;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 135
    .local v1, "value":[B
    const/4 v2, 0x0

    .line 136
    .local v2, "endpoint":Lzipkin2/Endpoint;
    const/4 v3, 0x0

    .line 137
    .local v3, "isBoolean":Z
    const/4 v4, 0x0

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v4

    .line 140
    .local v0, "isString":Z
    .local v1, "key":Ljava/lang/String;
    .local v2, "value":[B
    .local v3, "endpoint":Lzipkin2/Endpoint;
    .local v5, "isBoolean":Z
    :goto_0
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v6

    .line 141
    .local v6, "thriftField":Lzipkin2/internal/ThriftField;
    iget-byte v7, v6, Lzipkin2/internal/ThriftField;->type:B

    if-nez v7, :cond_5

    .line 161
    .end local v6    # "thriftField":Lzipkin2/internal/ThriftField;
    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto :goto_2

    .line 162
    :cond_0
    if-eqz v0, :cond_1

    .line 163
    new-instance v4, Ljava/lang/String;

    sget-object v6, Lzipkin2/internal/ThriftCodec;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v1, v4, v3}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    .line 164
    :cond_1
    if-eqz v5, :cond_3

    array-length v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    aget-byte v4, v2, v4

    if-ne v4, v7, :cond_3

    if-eqz v3, :cond_3

    .line 165
    const-string v4, "sa"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ca"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ma"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    :cond_2
    invoke-virtual {p1, v1, v3}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 169
    :cond_3
    :goto_1
    return-void

    .line 161
    :cond_4
    :goto_2
    return-void

    .line 142
    .restart local v6    # "thriftField":Lzipkin2/internal/ThriftField;
    :cond_5
    sget-object v7, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->KEY:Lzipkin2/internal/ThriftField;

    invoke-virtual {v6, v7}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 143
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 144
    :cond_6
    sget-object v7, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->VALUE:Lzipkin2/internal/ThriftField;

    invoke-virtual {v6, v7}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 145
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    goto :goto_4

    .line 146
    :cond_7
    sget-object v7, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->TYPE:Lzipkin2/internal/ThriftField;

    invoke-virtual {v6, v7}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 147
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    if-eqz v7, :cond_9

    const/4 v8, 0x6

    if-eq v7, v8, :cond_8

    goto :goto_3

    .line 152
    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    .line 149
    :cond_9
    const/4 v5, 0x1

    .line 150
    nop

    .line 153
    :goto_3
    goto :goto_4

    .line 155
    :cond_a
    sget-object v7, Lzipkin2/internal/V1ThriftSpanReader$BinaryAnnotationReader;->ENDPOINT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v6, v7}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 156
    invoke-static {p0}, Lzipkin2/internal/ThriftEndpointCodec;->read(Ljava/nio/ByteBuffer;)Lzipkin2/Endpoint;

    move-result-object v3

    goto :goto_4

    .line 158
    :cond_b
    iget-byte v7, v6, Lzipkin2/internal/ThriftField;->type:B

    invoke-static {p0, v7}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;B)V

    .line 160
    .end local v6    # "thriftField":Lzipkin2/internal/ThriftField;
    :goto_4
    goto/16 :goto_0
.end method

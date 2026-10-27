.class public final Lzipkin2/internal/V1SpanWriter;
.super Ljava/lang/Object;
.source "V1SpanWriter.java"

# interfaces
.implements Lzipkin2/internal/Buffer$Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/Buffer$Writer<",
        "Lzipkin2/v1/V1Span;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static binaryAnnotationSizeInBytes(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "endpointSize"    # I

    .line 191
    const/16 v0, 0x15

    .line 192
    .local v0, "sizeInBytes":I
    invoke-static {p0}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    invoke-static {p1}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    if-eqz p2, :cond_0

    .line 195
    add-int/lit8 v0, v0, 0xc

    .line 196
    add-int/2addr v0, p2

    .line 198
    :cond_0
    return v0
.end method

.method static legacyEndpointBytes(Lzipkin2/Endpoint;)[B
    .locals 3
    .param p0, "localEndpoint"    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 184
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lzipkin2/internal/V2SpanWriter;->endpointSizeInBytes(Lzipkin2/Endpoint;Z)I

    move-result v2

    invoke-direct {v0, v2}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 186
    .local v0, "buffer":Lzipkin2/internal/Buffer;
    invoke-static {p0, v0, v1}, Lzipkin2/internal/V2SpanWriter;->writeEndpoint(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;Z)V

    .line 187
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static writeBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;[BLzipkin2/internal/Buffer;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "endpoint"    # [B
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p3, "b"    # Lzipkin2/internal/Buffer;

    .line 202
    const-string/jumbo v0, "{\"key\":\""

    invoke-virtual {p3, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-static {p0}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 203
    const-string v0, "\",\"value\":\""

    invoke-virtual {p3, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-static {p1}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 204
    if-eqz p2, :cond_0

    const-string v0, ",\"endpoint\":"

    invoke-virtual {p3, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 205
    :cond_0
    const-string/jumbo v0, "}"

    invoke-virtual {p3, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 206
    return-void
.end method


# virtual methods
.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lzipkin2/v1/V1Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1SpanWriter;->sizeInBytes(Lzipkin2/v1/V1Span;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/v1/V1Span;)I
    .locals 13
    .param p1, "value"    # Lzipkin2/v1/V1Span;

    .line 33
    const/16 v0, 0x1d

    .line 34
    .local v0, "sizeInBytes":I
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->traceIdHigh()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x10

    .line 35
    :cond_0
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 36
    add-int/lit8 v0, v0, 0x1e

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x18

    .line 39
    add-int/lit8 v0, v0, 0xa

    .line 40
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_2
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 44
    add-int/lit8 v0, v0, 0xd

    .line 45
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_3
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 48
    add-int/lit8 v0, v0, 0xc

    .line 49
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_4
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 53
    .local v1, "annotationCount":I
    const/4 v2, 0x0

    .line 54
    .local v2, "lastEndpoint":Lzipkin2/Endpoint;
    const/4 v3, 0x0

    .line 55
    .local v3, "lastEndpointSize":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_9

    .line 56
    add-int/lit8 v0, v0, 0x11

    .line 57
    if-le v1, v5, :cond_5

    add-int/lit8 v6, v1, -0x1

    add-int/2addr v0, v6

    .line 58
    :cond_5
    move-object v6, v2

    move v2, v0

    move v0, v4

    .local v0, "i":I
    .local v2, "sizeInBytes":I
    .local v6, "lastEndpoint":Lzipkin2/Endpoint;
    :goto_0
    if-ge v0, v1, :cond_8

    .line 59
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzipkin2/v1/V1Annotation;

    .line 60
    .local v7, "a":Lzipkin2/v1/V1Annotation;
    invoke-virtual {v7}, Lzipkin2/v1/V1Annotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v8

    .line 62
    .local v8, "endpoint":Lzipkin2/Endpoint;
    if-nez v8, :cond_6

    .line 63
    const/4 v9, 0x0

    .local v9, "endpointSize":I
    :goto_1
    goto :goto_2

    .line 64
    .end local v9    # "endpointSize":I
    :cond_6
    invoke-virtual {v8, v6}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 65
    move v9, v3

    goto :goto_1

    .line 67
    :cond_7
    move-object v6, v8

    .line 68
    invoke-static {v8, v5}, Lzipkin2/internal/V2SpanWriter;->endpointSizeInBytes(Lzipkin2/Endpoint;Z)I

    move-result v9

    move v3, v9

    .line 70
    .restart local v9    # "endpointSize":I
    :goto_2
    invoke-virtual {v7}, Lzipkin2/v1/V1Annotation;->timestamp()J

    move-result-wide v10

    invoke-virtual {v7}, Lzipkin2/v1/V1Annotation;->value()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12, v9}, Lzipkin2/internal/V2SpanWriter;->annotationSizeInBytes(JLjava/lang/String;I)I

    move-result v10

    add-int/2addr v2, v10

    .line 58
    .end local v7    # "a":Lzipkin2/v1/V1Annotation;
    .end local v8    # "endpoint":Lzipkin2/Endpoint;
    .end local v9    # "endpointSize":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_8
    move v0, v2

    move-object v2, v6

    .end local v6    # "lastEndpoint":Lzipkin2/Endpoint;
    .local v0, "sizeInBytes":I
    .local v2, "lastEndpoint":Lzipkin2/Endpoint;
    :cond_9
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 75
    .local v6, "binaryAnnotationCount":I
    if-lez v6, :cond_e

    .line 76
    add-int/lit8 v0, v0, 0x17

    .line 77
    if-le v6, v5, :cond_a

    add-int/lit8 v7, v6, -0x1

    add-int/2addr v0, v7

    .line 78
    :cond_a
    nop

    .local v4, "i":I
    :goto_3
    if-ge v4, v6, :cond_e

    .line 79
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    .local v8, "i":I
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "i":I
    check-cast v4, Lzipkin2/v1/V1BinaryAnnotation;

    .line 80
    .local v4, "a":Lzipkin2/v1/V1BinaryAnnotation;
    invoke-virtual {v4}, Lzipkin2/v1/V1BinaryAnnotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v7

    .line 82
    .local v7, "endpoint":Lzipkin2/Endpoint;
    if-nez v7, :cond_b

    .line 83
    const/4 v9, 0x0

    .restart local v9    # "endpointSize":I
    :goto_4
    goto :goto_5

    .line 84
    .end local v9    # "endpointSize":I
    :cond_b
    invoke-virtual {v7, v2}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 85
    move v9, v3

    goto :goto_4

    .line 87
    :cond_c
    move-object v2, v7

    .line 88
    invoke-static {v7, v5}, Lzipkin2/internal/V2SpanWriter;->endpointSizeInBytes(Lzipkin2/Endpoint;Z)I

    move-result v9

    move v3, v9

    .line 90
    .restart local v9    # "endpointSize":I
    :goto_5
    invoke-virtual {v4}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 91
    invoke-virtual {v4}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lzipkin2/internal/V1SpanWriter;->binaryAnnotationSizeInBytes(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    add-int/2addr v0, v10

    goto :goto_6

    .line 93
    :cond_d
    add-int/lit8 v0, v0, 0x25

    .line 94
    add-int/2addr v0, v9

    .line 96
    .end local v4    # "a":Lzipkin2/v1/V1BinaryAnnotation;
    .end local v7    # "endpoint":Lzipkin2/Endpoint;
    .end local v9    # "endpointSize":I
    :goto_6
    nop

    .line 78
    move v4, v8

    goto :goto_3

    .line 99
    .end local v8    # "i":I
    :cond_e
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->debug()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v0, v0, 0xd

    .line 100
    :cond_f
    add-int/2addr v0, v5

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 180
    const-string v0, "Span"

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    .locals 0

    .line 29
    check-cast p1, Lzipkin2/v1/V1Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/V1SpanWriter;->write(Lzipkin2/v1/V1Span;Lzipkin2/internal/Buffer;)V

    return-void
.end method

.method public write(Lzipkin2/v1/V1Span;Lzipkin2/internal/Buffer;)V
    .locals 13
    .param p1, "value"    # Lzipkin2/v1/V1Span;
    .param p2, "b"    # Lzipkin2/internal/Buffer;

    .line 105
    const-string/jumbo v0, "{\"traceId\":\""

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 106
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->traceIdHigh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->traceIdHigh()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lzipkin2/internal/Buffer;->writeLongHex(J)Lzipkin2/internal/Buffer;

    .line 107
    :cond_0
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->traceId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lzipkin2/internal/Buffer;->writeLongHex(J)Lzipkin2/internal/Buffer;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 108
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 109
    const-string v0, ",\"parentId\":\""

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lzipkin2/internal/Buffer;->writeLongHex(J)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 111
    :cond_1
    const-string v0, ",\"id\":\""

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->id()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lzipkin2/internal/Buffer;->writeLongHex(J)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 112
    const-string v0, ",\"name\":\""

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 113
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 114
    :cond_2
    invoke-virtual {p2, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 116
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 117
    const-string v0, ",\"timestamp\":"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 119
    :cond_3
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 120
    const-string v0, ",\"duration\":"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 123
    :cond_4
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 124
    .local v0, "annotationCount":I
    const/4 v1, 0x0

    .line 125
    .local v1, "lastEndpoint":Lzipkin2/Endpoint;
    const/4 v2, 0x0

    .line 126
    .local v2, "lastEndpointBytes":[B
    const/16 v3, 0x5d

    const/16 v4, 0x2c

    const/4 v5, 0x0

    if-lez v0, :cond_9

    .line 127
    const-string v6, ",\"annotations\":["

    invoke-virtual {p2, v6}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 128
    move-object v6, v2

    move-object v2, v1

    move v1, v5

    .line 128
    .local v1, "i":I
    .local v2, "lastEndpoint":Lzipkin2/Endpoint;
    .local v6, "lastEndpointBytes":[B
    :goto_0
    if-ge v1, v0, :cond_8

    .line 129
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    .line 129
    .local v8, "i":I
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .end local v1    # "i":I
    check-cast v1, Lzipkin2/v1/V1Annotation;

    .line 130
    .local v1, "a":Lzipkin2/v1/V1Annotation;
    invoke-virtual {v1}, Lzipkin2/v1/V1Annotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v7

    .line 132
    .local v7, "endpoint":Lzipkin2/Endpoint;
    if-nez v7, :cond_5

    .line 133
    const/4 v9, 0x0

    .line 133
    .local v9, "endpointBytes":[B
    :goto_1
    goto :goto_2

    .line 134
    .end local v9    # "endpointBytes":[B
    :cond_5
    invoke-virtual {v7, v2}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 135
    move-object v9, v6

    goto :goto_1

    .line 137
    :cond_6
    move-object v2, v7

    .line 138
    invoke-static {v7}, Lzipkin2/internal/V1SpanWriter;->legacyEndpointBytes(Lzipkin2/Endpoint;)[B

    move-result-object v9

    move-object v6, v9

    .line 140
    .restart local v9    # "endpointBytes":[B
    :goto_2
    invoke-virtual {v1}, Lzipkin2/v1/V1Annotation;->timestamp()J

    move-result-wide v10

    invoke-virtual {v1}, Lzipkin2/v1/V1Annotation;->value()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12, v9, p2}, Lzipkin2/internal/V2SpanWriter;->writeAnnotation(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V

    .line 141
    if-ge v8, v0, :cond_7

    invoke-virtual {p2, v4}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 142
    .end local v1    # "a":Lzipkin2/v1/V1Annotation;
    .end local v7    # "endpoint":Lzipkin2/Endpoint;
    .end local v9    # "endpointBytes":[B
    :cond_7
    nop

    .line 128
    move v1, v8

    goto :goto_0

    .line 143
    .end local v8    # "i":I
    :cond_8
    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 145
    move-object v1, v2

    move-object v2, v6

    .line 145
    .end local v6    # "lastEndpointBytes":[B
    .local v1, "lastEndpoint":Lzipkin2/Endpoint;
    .local v2, "lastEndpointBytes":[B
    :cond_9
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 146
    .local v6, "binaryAnnotationCount":I
    const/16 v7, 0x7d

    if-lez v6, :cond_f

    .line 147
    const-string v8, ",\"binaryAnnotations\":["

    invoke-virtual {p2, v8}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 148
    nop

    .line 148
    .local v5, "i":I
    :goto_3
    if-ge v5, v6, :cond_e

    .line 149
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    .line 149
    .local v9, "i":I
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 149
    .end local v5    # "i":I
    check-cast v5, Lzipkin2/v1/V1BinaryAnnotation;

    .line 150
    .local v5, "a":Lzipkin2/v1/V1BinaryAnnotation;
    invoke-virtual {v5}, Lzipkin2/v1/V1BinaryAnnotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v8

    .line 152
    .local v8, "endpoint":Lzipkin2/Endpoint;
    if-nez v8, :cond_a

    .line 153
    const/4 v10, 0x0

    .line 153
    .local v10, "endpointBytes":[B
    :goto_4
    goto :goto_5

    .line 154
    .end local v10    # "endpointBytes":[B
    :cond_a
    invoke-virtual {v8, v1}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 155
    move-object v10, v2

    goto :goto_4

    .line 157
    :cond_b
    move-object v1, v8

    .line 158
    invoke-static {v8}, Lzipkin2/internal/V1SpanWriter;->legacyEndpointBytes(Lzipkin2/Endpoint;)[B

    move-result-object v10

    move-object v2, v10

    .line 160
    .restart local v10    # "endpointBytes":[B
    :goto_5
    invoke-virtual {v5}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 161
    invoke-virtual {v5}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10, p2}, Lzipkin2/internal/V1SpanWriter;->writeBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;[BLzipkin2/internal/Buffer;)V

    goto :goto_6

    .line 163
    :cond_c
    const-string/jumbo v11, "{\"key\":\""

    invoke-virtual {p2, v11}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v11

    invoke-virtual {v5}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 164
    const-string v11, "\",\"value\":true,\"endpoint\":"

    invoke-virtual {p2, v11}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 165
    invoke-virtual {p2, v10}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 166
    invoke-virtual {p2, v7}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 168
    :goto_6
    if-ge v9, v6, :cond_d

    invoke-virtual {p2, v4}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 169
    .end local v5    # "a":Lzipkin2/v1/V1BinaryAnnotation;
    .end local v8    # "endpoint":Lzipkin2/Endpoint;
    .end local v10    # "endpointBytes":[B
    :cond_d
    nop

    .line 148
    move v5, v9

    goto :goto_3

    .line 170
    .end local v9    # "i":I
    :cond_e
    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 172
    :cond_f
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->debug()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 173
    const-string v3, ",\"debug\":true"

    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 175
    :cond_10
    invoke-virtual {p2, v7}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 176
    return-void
.end method

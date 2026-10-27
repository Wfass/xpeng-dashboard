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

.method static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 192
    invoke-static {p0}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x15

    .line 193
    invoke-static {p1}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p2

    :cond_0
    return p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;[BLzipkin2/internal/Buffer;)V
    .locals 1
    .param p2    # [B
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "{\"key\":\""

    .line 202
    invoke-virtual {p3, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-static {p0}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    const-string p0, "\",\"value\":\""

    .line 203
    invoke-virtual {p3, p0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object p0

    invoke-static {p1}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object p0

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    if-eqz p2, :cond_0

    const-string p0, ",\"endpoint\":"

    .line 204
    invoke-virtual {p3, p0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object p0

    invoke-virtual {p0, p2}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    :cond_0
    const-string/jumbo p0, "}"

    .line 205
    invoke-virtual {p3, p0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    return-void
.end method

.method static a(Lzipkin2/Endpoint;)[B
    .locals 3
    .param p0    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lzipkin2/internal/V2SpanWriter;->a(Lzipkin2/Endpoint;Z)I

    move-result v2

    invoke-direct {v0, v2}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 186
    invoke-static {p0, v0, v1}, Lzipkin2/internal/V2SpanWriter;->a(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;Z)V

    .line 187
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p0

    return-object p0
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
    .locals 11

    .line 34
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->traceIdHigh()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1d

    .line 35
    :goto_0
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1e

    :cond_1
    add-int/lit8 v0, v0, 0x18

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

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0xd

    .line 45
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_3
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_9

    add-int/lit8 v0, v0, 0x11

    if-le v1, v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v0, v5

    :cond_5
    move-object v5, v2

    move v6, v3

    move v2, v0

    move v0, v6

    :goto_1
    if-ge v0, v1, :cond_8

    .line 59
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzipkin2/v1/V1Annotation;

    .line 60
    invoke-virtual {v7}, Lzipkin2/v1/V1Annotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v8

    if-nez v8, :cond_6

    move-object v8, v5

    move v5, v3

    goto :goto_2

    .line 64
    :cond_6
    invoke-virtual {v8, v5}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v8, v5

    move v5, v6

    goto :goto_2

    .line 68
    :cond_7
    invoke-static {v8, v4}, Lzipkin2/internal/V2SpanWriter;->a(Lzipkin2/Endpoint;Z)I

    move-result v5

    move v6, v5

    .line 70
    :goto_2
    invoke-virtual {v7}, Lzipkin2/v1/V1Annotation;->timestamp()J

    move-result-wide v9

    invoke-virtual {v7}, Lzipkin2/v1/V1Annotation;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7, v5}, Lzipkin2/internal/V2SpanWriter;->a(JLjava/lang/String;I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    move-object v5, v8

    goto :goto_1

    :cond_8
    move v0, v2

    move-object v2, v5

    goto :goto_3

    :cond_9
    move v6, v3

    .line 74
    :goto_3
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    add-int/lit8 v0, v0, 0x17

    if-le v1, v4, :cond_a

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v0, v5

    :cond_a
    move-object v5, v2

    move v2, v0

    move v0, v3

    :goto_4
    if-ge v0, v1, :cond_e

    .line 79
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/v1/V1BinaryAnnotation;

    .line 80
    invoke-virtual {v0}, Lzipkin2/v1/V1BinaryAnnotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v7

    if-nez v7, :cond_b

    move-object v7, v5

    move v5, v3

    goto :goto_5

    .line 84
    :cond_b
    invoke-virtual {v7, v5}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v7, v5

    move v5, v6

    goto :goto_5

    .line 88
    :cond_c
    invoke-static {v7, v4}, Lzipkin2/internal/V2SpanWriter;->a(Lzipkin2/Endpoint;Z)I

    move-result v5

    move v6, v5

    .line 90
    :goto_5
    invoke-virtual {v0}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 91
    invoke-virtual {v0}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0, v5}, Lzipkin2/internal/V1SpanWriter;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_6

    :cond_d
    add-int/lit8 v2, v2, 0x25

    add-int/2addr v2, v5

    :goto_6
    move-object v5, v7

    move v0, v8

    goto :goto_4

    :cond_e
    move v0, v2

    .line 99
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->debug()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    add-int/lit8 v0, v0, 0xd

    :cond_10
    add-int/2addr v0, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

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
    .locals 12

    const-string/jumbo v0, "{\"traceId\":\""

    .line 105
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

    const-string v0, ",\"parentId\":\""

    .line 109
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lzipkin2/internal/Buffer;->writeLongHex(J)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_1
    const-string v0, ",\"id\":\""

    .line 111
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->id()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lzipkin2/internal/Buffer;->writeLongHex(J)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    const-string v0, ",\"name\":\""

    .line 112
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

    const-string v0, ",\"timestamp\":"

    .line 117
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

    const-string v0, ",\"duration\":"

    .line 120
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

    const/16 v1, 0x2c

    const/16 v2, 0x5d

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v0, :cond_9

    const-string v5, ",\"annotations\":["

    .line 127
    invoke-virtual {p2, v5}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move v5, v3

    move-object v6, v4

    move-object v7, v6

    :goto_0
    if-ge v5, v0, :cond_8

    .line 129
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/v1/V1Annotation;

    .line 130
    invoke-virtual {v5}, Lzipkin2/v1/V1Annotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v6

    move-object v6, v4

    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {v8, v6}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v8, v6

    move-object v6, v7

    goto :goto_1

    .line 138
    :cond_6
    invoke-static {v8}, Lzipkin2/internal/V1SpanWriter;->a(Lzipkin2/Endpoint;)[B

    move-result-object v6

    move-object v7, v6

    .line 140
    :goto_1
    invoke-virtual {v5}, Lzipkin2/v1/V1Annotation;->timestamp()J

    move-result-wide v10

    invoke-virtual {v5}, Lzipkin2/v1/V1Annotation;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11, v5, v6, p2}, Lzipkin2/internal/V2SpanWriter;->a(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V

    if-ge v9, v0, :cond_7

    .line 141
    invoke-virtual {p2, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_7
    move-object v6, v8

    move v5, v9

    goto :goto_0

    .line 143
    :cond_8
    invoke-virtual {p2, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    goto :goto_2

    :cond_9
    move-object v6, v4

    move-object v7, v6

    .line 145
    :goto_2
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0x7d

    if-lez v0, :cond_f

    const-string v8, ",\"binaryAnnotations\":["

    .line 147
    invoke-virtual {p2, v8}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    :goto_3
    if-ge v3, v0, :cond_e

    .line 149
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/v1/V1BinaryAnnotation;

    .line 150
    invoke-virtual {v3}, Lzipkin2/v1/V1BinaryAnnotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v8

    if-nez v8, :cond_a

    move-object v8, v6

    move-object v6, v4

    goto :goto_4

    .line 154
    :cond_a
    invoke-virtual {v8, v6}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v8, v6

    move-object v6, v7

    goto :goto_4

    .line 158
    :cond_b
    invoke-static {v8}, Lzipkin2/internal/V1SpanWriter;->a(Lzipkin2/Endpoint;)[B

    move-result-object v6

    move-object v7, v6

    .line 160
    :goto_4
    invoke-virtual {v3}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 161
    invoke-virtual {v3}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v6, p2}, Lzipkin2/internal/V1SpanWriter;->a(Ljava/lang/String;Ljava/lang/String;[BLzipkin2/internal/Buffer;)V

    goto :goto_5

    :cond_c
    const-string/jumbo v10, "{\"key\":\""

    .line 163
    invoke-virtual {p2, v10}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v10

    invoke-virtual {v3}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    const-string v3, "\",\"value\":true,\"endpoint\":"

    .line 164
    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 165
    invoke-virtual {p2, v6}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 166
    invoke-virtual {p2, v5}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :goto_5
    if-ge v9, v0, :cond_d

    .line 168
    invoke-virtual {p2, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_d
    move-object v6, v8

    move v3, v9

    goto :goto_3

    .line 170
    :cond_e
    invoke-virtual {p2, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 172
    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->debug()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, ",\"debug\":true"

    .line 173
    invoke-virtual {p2, p1}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 175
    :cond_10
    invoke-virtual {p2, v5}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

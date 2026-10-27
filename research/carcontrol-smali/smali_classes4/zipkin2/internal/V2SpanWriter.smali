.class public final Lzipkin2/internal/V2SpanWriter;
.super Ljava/lang/Object;
.source "V2SpanWriter.java"

# interfaces
.implements Lzipkin2/internal/Buffer$Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/Buffer$Writer<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static annotationSizeInBytes(JLjava/lang/String;I)I
    .locals 0

    .line 209
    invoke-static {p0, p1}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result p0

    add-int/lit8 p0, p0, 0x19

    .line 210
    invoke-static {p2}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p3, :cond_0

    add-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p3

    :cond_0
    return p0
.end method

.method static endpointSizeInBytes(Lzipkin2/Endpoint;Z)I
    .locals 4

    .line 152
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_1

    const/16 v1, 0x11

    .line 156
    invoke-static {v0}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, p1

    .line 158
    :goto_0
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v1, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x9

    .line 161
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 163
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v1, p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x9

    .line 166
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 168
    :cond_5
    invoke-virtual {p0}, Lzipkin2/Endpoint;->portAsInt()I

    move-result p0

    if-eqz p0, :cond_7

    if-eq v1, p1, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x7

    int-to-long v2, p0

    .line 172
    invoke-static {v2, v3}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result p0

    add-int/2addr v1, p0

    :cond_7
    add-int/2addr v1, p1

    return v1
.end method

.method static writeAnnotation(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V
    .locals 1
    .param p3    # [B
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    const-string v0, "{\"timestamp\":"

    .line 219
    invoke-virtual {p4, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    const-string p0, ",\"value\":\""

    .line 220
    invoke-virtual {p4, p0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object p0

    invoke-static {p2}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object p0

    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    if-eqz p3, :cond_0

    const-string p0, ",\"endpoint\":"

    .line 221
    invoke-virtual {p4, p0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object p0

    invoke-virtual {p0, p3}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    :cond_0
    const/16 p0, 0x7d

    .line 222
    invoke-virtual {p4, p0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method static writeEndpoint(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;Z)V
    .locals 4

    const/16 v0, 0x7b

    .line 178
    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 180
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    :cond_0
    const/4 p2, 0x1

    const/16 v1, 0x22

    if-eqz v0, :cond_1

    const-string v2, "\"serviceName\":\""

    .line 183
    invoke-virtual {p1, v2}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 184
    invoke-static {v0}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    move v0, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 187
    :goto_0
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_2
    const-string v0, "\"ipv4\":\""

    .line 189
    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 190
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    move v0, p2

    .line 193
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_4
    const-string v0, "\"ipv6\":\""

    .line 195
    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 196
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    goto :goto_1

    :cond_5
    move p2, v0

    .line 199
    :goto_1
    invoke-virtual {p0}, Lzipkin2/Endpoint;->portAsInt()I

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    .line 201
    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_6
    const-string p2, "\"port\":"

    .line 202
    invoke-virtual {p1, p2}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object p2

    int-to-long v0, p0

    invoke-virtual {p2, v0, v1}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    :cond_7
    const/16 p0, 0x7d

    .line 204
    invoke-virtual {p1, p0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/V2SpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 8

    .line 31
    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    .line 32
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1e

    :cond_0
    add-int/lit8 v0, v0, 0x18

    .line 36
    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    .line 38
    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lzipkin2/Span$Kind;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_1
    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0xa

    .line 42
    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_2
    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0xd

    .line 46
    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_3
    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0xc

    .line 50
    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_4
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x11

    .line 54
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-static {v1, v2}, Lzipkin2/internal/V2SpanWriter;->endpointSizeInBytes(Lzipkin2/Endpoint;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_5
    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x12

    .line 58
    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-static {v1, v2}, Lzipkin2/internal/V2SpanWriter;->endpointSizeInBytes(Lzipkin2/Endpoint;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_6
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, 0x11

    .line 62
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_7

    add-int/lit8 v4, v1, -0x1

    add-int/2addr v0, v4

    :cond_7
    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_8

    .line 65
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Annotation;

    .line 66
    invoke-virtual {v5}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v6

    invoke-virtual {v5}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5, v2}, Lzipkin2/internal/V2SpanWriter;->annotationSizeInBytes(JLjava/lang/String;I)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69
    :cond_8
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0xa

    .line 71
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v3, :cond_9

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 73
    :cond_9
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v0, v0, 0x5

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 79
    :cond_a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0xd

    .line 82
    :cond_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    add-int/lit8 v0, v0, 0xe

    :cond_c
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    .locals 0

    .line 27
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/V2SpanWriter;->write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V

    return-void
.end method

.method public write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V
    .locals 8

    const-string v0, "{\"traceId\":\""

    .line 90
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 91
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ",\"parentId\":\""

    .line 92
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_0
    const-string v0, ",\"id\":\""

    .line 94
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 95
    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ",\"kind\":\""

    .line 96
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lzipkin2/Span$Kind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 98
    :cond_1
    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ",\"name\":\""

    .line 99
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 101
    :cond_2
    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const-string v0, ",\"timestamp\":"

    .line 102
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 104
    :cond_3
    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const-string v0, ",\"duration\":"

    .line 105
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 107
    :cond_4
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v0, ",\"localEndpoint\":"

    .line 108
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 109
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lzipkin2/internal/V2SpanWriter;->writeEndpoint(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;Z)V

    .line 111
    :cond_5
    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, ",\"remoteEndpoint\":"

    .line 112
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 113
    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    invoke-static {v0, p2, v2}, Lzipkin2/internal/V2SpanWriter;->writeEndpoint(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;Z)V

    .line 115
    :cond_6
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v3, 0x2c

    if-nez v0, :cond_9

    const-string v0, ",\"annotations\":"

    .line 116
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    const/16 v0, 0x5b

    .line 117
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 118
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_8

    .line 119
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Annotation;

    .line 120
    invoke-virtual {v2}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v6

    invoke-virtual {v2}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v6, v7, v2, v4, p2}, Lzipkin2/internal/V2SpanWriter;->writeAnnotation(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V

    if-ge v5, v0, :cond_7

    .line 121
    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    :cond_7
    move v2, v5

    goto :goto_0

    :cond_8
    const/16 v0, 0x5d

    .line 123
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 125
    :cond_9
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/16 v2, 0x7d

    if-nez v0, :cond_c

    const-string v0, ",\"tags\":{"

    .line 126
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 127
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    :cond_a
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 130
    invoke-virtual {p2, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v5

    const-string v6, "\":\""

    invoke-virtual {v5, v6}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 131
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    goto :goto_1

    .line 134
    :cond_b
    invoke-virtual {p2, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 136
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ",\"debug\":true"

    .line 137
    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 139
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, ",\"shared\":true"

    .line 140
    invoke-virtual {p2, p1}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 142
    :cond_e
    invoke-virtual {p2, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

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
    .locals 2
    .param p0, "timestamp"    # J
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "endpointSizeInBytes"    # I

    .line 208
    const/16 v0, 0x19

    .line 209
    .local v0, "sizeInBytes":I
    invoke-static {p0, p1}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    invoke-static {p2}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 211
    if-eqz p3, :cond_0

    .line 212
    add-int/lit8 v0, v0, 0xc

    .line 213
    add-int/2addr v0, p3

    .line 215
    :cond_0
    return v0
.end method

.method static endpointSizeInBytes(Lzipkin2/Endpoint;Z)I
    .locals 6
    .param p0, "value"    # Lzipkin2/Endpoint;
    .param p1, "writeEmptyServiceName"    # Z

    .line 151
    const/4 v0, 0x1

    .line 152
    .local v0, "sizeInBytes":I
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "serviceName":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 154
    :cond_0
    if-eqz v1, :cond_1

    .line 155
    add-int/lit8 v0, v0, 0x10

    .line 156
    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    :cond_1
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 159
    if-eq v0, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x9

    .line 161
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 163
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 164
    if-eq v0, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_4
    add-int/lit8 v0, v0, 0x9

    .line 166
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    :cond_5
    invoke-virtual {p0}, Lzipkin2/Endpoint;->portAsInt()I

    move-result v2

    .line 169
    .local v2, "port":I
    if-eqz v2, :cond_7

    .line 170
    if-eq v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 171
    :cond_6
    add-int/lit8 v0, v0, 0x7

    .line 172
    int-to-long v4, v2

    invoke-static {v4, v5}, Lzipkin2/internal/Buffer;->asciiSizeInBytes(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 174
    :cond_7
    add-int/2addr v0, v3

    return v0
.end method

.method static writeAnnotation(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V
    .locals 2
    .param p0, "timestamp"    # J
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "endpoint"    # [B
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p4, "b"    # Lzipkin2/internal/Buffer;

    .line 219
    const-string/jumbo v0, "{\"timestamp\":"

    invoke-virtual {p4, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 220
    const-string v0, ",\"value\":\""

    invoke-virtual {p4, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-static {p2}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 221
    if-eqz p3, :cond_0

    const-string v0, ",\"endpoint\":"

    invoke-virtual {p4, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 222
    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {p4, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 223
    return-void
.end method

.method static writeEndpoint(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;Z)V
    .locals 6
    .param p0, "value"    # Lzipkin2/Endpoint;
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "writeEmptyServiceName"    # Z

    .line 178
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "wroteField":Z
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "serviceName":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, ""

    .line 182
    :cond_0
    const/16 v2, 0x22

    if-eqz v1, :cond_1

    .line 183
    const-string v3, "\"serviceName\":\""

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 184
    invoke-static {v1}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_1
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    if-eqz v3, :cond_3

    .line 188
    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 189
    :cond_2
    const-string v3, "\"ipv4\":\""

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 190
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 191
    const/4 v0, 0x1

    .line 193
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 194
    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 195
    :cond_4
    const-string v3, "\"ipv6\":\""

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 196
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 197
    const/4 v0, 0x1

    .line 199
    :cond_5
    invoke-virtual {p0}, Lzipkin2/Endpoint;->portAsInt()I

    move-result v2

    .line 200
    .local v2, "port":I
    if-eqz v2, :cond_7

    .line 201
    if-eqz v0, :cond_6

    invoke-virtual {p1, v4}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 202
    :cond_6
    const-string v3, "\"port\":"

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lzipkin2/internal/Buffer;->writeAscii(J)Lzipkin2/internal/Buffer;

    .line 204
    :cond_7
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 205
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
    .locals 9
    .param p1, "value"    # Lzipkin2/Span;

    .line 30
    const/16 v0, 0xd

    .line 31
    .local v0, "sizeInBytes":I
    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    add-int/lit8 v0, v0, 0x1e

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x18

    .line 36
    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
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

    .line 41
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

    .line 45
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

    .line 49
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

    .line 53
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

    .line 57
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

    if-nez v1, :cond_9

    .line 61
    add-int/lit8 v0, v0, 0x11

    .line 62
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 63
    .local v1, "length":I
    if-le v1, v3, :cond_7

    add-int/lit8 v4, v1, -0x1

    add-int/2addr v0, v4

    .line 64
    :cond_7
    move v4, v0

    move v0, v2

    .local v0, "i":I
    .local v4, "sizeInBytes":I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 65
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Annotation;

    .line 66
    .local v5, "a":Lzipkin2/Annotation;
    invoke-virtual {v5}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v6

    invoke-virtual {v5}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v2}, Lzipkin2/internal/V2SpanWriter;->annotationSizeInBytes(JLjava/lang/String;I)I

    move-result v6

    add-int/2addr v4, v6

    .line 64
    .end local v5    # "a":Lzipkin2/Annotation;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_8
    move v0, v4

    .end local v4    # "sizeInBytes":I
    .local v0, "sizeInBytes":I
    :cond_9
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 70
    add-int/lit8 v0, v0, 0xa

    .line 71
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 72
    .local v1, "tagCount":I
    if-le v1, v3, :cond_a

    add-int/lit8 v2, v1, -0x1

    add-int/2addr v0, v2

    .line 73
    :cond_a
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 74
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x5

    .line 75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lzipkin2/internal/JsonEscaper;->jsonEscapedSizeInBytes(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    .line 77
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 79
    .end local v1    # "tagCount":I
    :cond_b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 80
    add-int/lit8 v0, v0, 0xd

    .line 82
    :cond_c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 83
    add-int/lit8 v0, v0, 0xe

    .line 85
    :cond_d
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 147
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
    .locals 9
    .param p1, "value"    # Lzipkin2/Span;
    .param p2, "b"    # Lzipkin2/internal/Buffer;

    .line 90
    const-string/jumbo v0, "{\"traceId\":\""

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

    .line 92
    const-string v0, ",\"parentId\":\""

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 94
    :cond_0
    const-string v0, ",\"id\":\""

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

    .line 96
    const-string v0, ",\"kind\":\""

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

    .line 99
    const-string v0, ",\"name\":\""

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

    .line 102
    const-string v0, ",\"timestamp\":"

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

    .line 105
    const-string v0, ",\"duration\":"

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

    .line 108
    const-string v0, ",\"localEndpoint\":"

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

    .line 112
    const-string v0, ",\"remoteEndpoint\":"

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

    const/16 v2, 0x2c

    if-nez v0, :cond_9

    .line 116
    const-string v0, ",\"annotations\":"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 117
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 118
    const/4 v0, 0x0

    .line 118
    .local v0, "i":I
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 118
    .local v3, "length":I
    :goto_0
    if-ge v0, v3, :cond_8

    .line 119
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    .line 119
    .local v5, "i":I
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .end local v0    # "i":I
    check-cast v0, Lzipkin2/Annotation;

    .line 120
    .local v0, "a":Lzipkin2/Annotation;
    invoke-virtual {v0}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v6

    invoke-virtual {v0}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-static {v6, v7, v4, v8, p2}, Lzipkin2/internal/V2SpanWriter;->writeAnnotation(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V

    .line 121
    if-ge v5, v3, :cond_7

    invoke-virtual {p2, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 122
    .end local v0    # "a":Lzipkin2/Annotation;
    :cond_7
    nop

    .line 118
    move v0, v5

    goto :goto_0

    .line 123
    .end local v3    # "length":I
    .end local v5    # "i":I
    :cond_8
    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 125
    :cond_9
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/16 v3, 0x7d

    if-nez v0, :cond_c

    .line 126
    const-string v0, ",\"tags\":{"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 127
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 130
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
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

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lzipkin2/internal/JsonEscaper;->jsonEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p2, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 133
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    goto :goto_1

    .line 134
    :cond_b
    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 136
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 137
    const-string v0, ",\"debug\":true"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 139
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 140
    const-string v0, ",\"shared\":true"

    invoke-virtual {p2, v0}, Lzipkin2/internal/Buffer;->writeAscii(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    .line 142
    :cond_e
    invoke-virtual {p2, v3}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 143
    return-void
.end method

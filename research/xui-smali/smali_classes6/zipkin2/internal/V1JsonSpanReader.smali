.class public final Lzipkin2/internal/V1JsonSpanReader;
.super Ljava/lang/Object;
.source "V1JsonSpanReader.java"

# interfaces
.implements Lzipkin2/internal/JsonCodec$JsonReaderAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
        "Lzipkin2/v1/V1Span;",
        ">;"
    }
.end annotation


# instance fields
.field builder:Lzipkin2/v1/V1Span$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lzipkin2/internal/V1JsonSpanReader;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/v1/V1Span;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/v1/V1Span;
    .locals 4
    .param p1, "reader"    # Lzipkin2/internal/JsonCodec$JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lzipkin2/v1/V1Span;->newBuilder()Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v0}, Lzipkin2/v1/V1Span$Builder;->clear()Lzipkin2/v1/V1Span$Builder;

    .line 57
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 58
    :goto_1
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "nextName":Ljava/lang/String;
    const-string v1, "traceId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/v1/V1Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/v1/V1Span$Builder;->id(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .line 68
    goto :goto_1

    .line 72
    :cond_3
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    iget-object v1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/v1/V1Span$Builder;->name(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_4

    .line 74
    :cond_4
    const-string v1, "parentId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    iget-object v1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/v1/V1Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_4

    .line 76
    :cond_5
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 77
    iget-object v1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->timestamp(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_4

    .line 78
    :cond_6
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79
    iget-object v1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/v1/V1Span$Builder;->duration(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_4

    .line 80
    :cond_7
    const-string v1, "annotations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 81
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 82
    :goto_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1JsonSpanReader;->readAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V

    goto :goto_2

    .line 83
    :cond_8
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V

    goto :goto_4

    .line 84
    :cond_9
    const-string v1, "binaryAnnotations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 85
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 86
    :goto_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1JsonSpanReader;->readBinaryAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V

    goto :goto_3

    .line 87
    :cond_a
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V

    goto :goto_4

    .line 88
    :cond_b
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 89
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/v1/V1Span$Builder;->debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_4

    .line 91
    :cond_c
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .line 93
    .end local v0    # "nextName":Ljava/lang/String;
    :cond_d
    :goto_4
    goto/16 :goto_1

    .line 94
    :cond_e
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 95
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v0}, Lzipkin2/v1/V1Span$Builder;->build()Lzipkin2/v1/V1Span;

    move-result-object v0

    return-object v0
.end method

.method readAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V
    .locals 6
    .param p1, "reader"    # Lzipkin2/internal/JsonCodec$JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "timestamp":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 103
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 104
    .local v2, "endpoint":Lzipkin2/Endpoint;
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "nextName":Ljava/lang/String;
    const-string v4, "timestamp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    const-string v4, "endpoint"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    sget-object v4, Lzipkin2/internal/V2SpanReader;->ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-interface {v4, p1}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lzipkin2/Endpoint;

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_0

    .line 116
    .end local v3    # "nextName":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 120
    iget-object v3, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1, v2}, Lzipkin2/v1/V1Span$Builder;->addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 121
    return-void

    .line 117
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incomplete annotation at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method readBinaryAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V
    .locals 7
    .param p1, "reader"    # Lzipkin2/internal/JsonCodec$JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, "endpoint":Lzipkin2/Endpoint;
    const/4 v2, 0x0

    .line 132
    .local v2, "booleanValue":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 134
    .local v3, "stringValue":Ljava/lang/String;
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 135
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 136
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "nextName":Ljava/lang/String;
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .line 139
    goto :goto_0

    .line 142
    :cond_0
    const-string v5, "key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_1
    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekString()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 147
    :cond_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekBoolean()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextBoolean()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_1

    .line 152
    :cond_4
    const-string v5, "endpoint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 153
    sget-object v5, Lzipkin2/internal/V2SpanReader;->ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-interface {v5, p1}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lzipkin2/Endpoint;

    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .line 157
    .end local v4    # "nextName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 159
    :cond_6
    if-eqz v0, :cond_a

    .line 162
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 164
    if-eqz v3, :cond_7

    .line 165
    iget-object v4, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v4, v0, v3, v1}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_2

    .line 166
    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 167
    const-string v4, "sa"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "ca"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "ma"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 168
    :cond_8
    iget-object v4, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v4, v0, v1}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 171
    :cond_9
    :goto_2
    return-void

    .line 160
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No key at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readList([BLjava/util/Collection;)Z
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 33
    .local p2, "out":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v0

    .line 35
    .local v0, "converter":Lzipkin2/v1/V1SpanConverter;
    new-instance v2, Lzipkin2/internal/JsonCodec$JsonReader;

    invoke-direct {v2, p1}, Lzipkin2/internal/JsonCodec$JsonReader;-><init>([B)V

    .line 37
    .local v2, "reader":Lzipkin2/internal/JsonCodec$JsonReader;
    :try_start_0
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 38
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {p0, v2}, Lzipkin2/internal/V1JsonSpanReader;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/v1/V1Span;

    move-result-object v1

    .line 41
    .local v1, "result":Lzipkin2/v1/V1Span;
    invoke-virtual {v0, v1, p2}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V

    .line 42
    .end local v1    # "result":Lzipkin2/v1/V1Span;
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v1, 0x1

    return v1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "List<Span>"

    invoke-static {v3, v1}, Lzipkin2/internal/JsonCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "Span"

    return-object v0
.end method

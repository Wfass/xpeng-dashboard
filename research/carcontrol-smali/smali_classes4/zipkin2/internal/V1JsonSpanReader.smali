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
    .locals 3
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
    invoke-virtual {v0}, Lzipkin2/v1/V1Span$Builder;->clear()Lzipkin2/v1/V1Span$Builder;

    .line 57
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "traceId"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    :cond_2
    const-string v1, "id"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->id(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_1

    :cond_4
    const-string v1, "name"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->name(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    :cond_5
    const-string v1, "parentId"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    :cond_6
    const-string v1, "timestamp"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 77
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->timestamp(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    :cond_7
    const-string v1, "duration"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 79
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->duration(J)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    :cond_8
    const-string v1, "annotations"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 81
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 82
    :goto_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1JsonSpanReader;->readAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V

    goto :goto_2

    .line 83
    :cond_9
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V

    goto/16 :goto_1

    :cond_a
    const-string v1, "binaryAnnotations"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 85
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 86
    :goto_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1JsonSpanReader;->readBinaryAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V

    goto :goto_3

    .line 87
    :cond_b
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V

    goto/16 :goto_1

    :cond_c
    const-string v1, "debug"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;

    goto/16 :goto_1

    .line 91
    :cond_d
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 94
    :cond_e
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 95
    iget-object p1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/v1/V1Span$Builder;->build()Lzipkin2/v1/V1Span;

    move-result-object p1

    return-object p1
.end method

.method readAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 104
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestamp"

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v4, "value"

    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v4, "endpoint"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    sget-object v2, Lzipkin2/internal/V2SpanReader;->ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-interface {v2, p1}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Endpoint;

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 120
    iget-object p1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4, v1, v2}, Lzipkin2/v1/V1Span$Builder;->addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    return-void

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete annotation at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readBinaryAnnotation(Lzipkin2/internal/JsonCodec$JsonReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 135
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 136
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_0

    :cond_0
    const-string v5, "key"

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v5, "value"

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekString()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekBoolean()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_0

    :cond_4
    const-string v5, "endpoint"

    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    sget-object v3, Lzipkin2/internal/V2SpanReader;->ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-interface {v3, p1}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Endpoint;

    goto :goto_0

    .line 155
    :cond_5
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_a

    .line 162
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    if-eqz v1, :cond_7

    .line 165
    iget-object p1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1, v0, v1, v3}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_9

    .line 166
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    const-string p1, "sa"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "ca"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "ma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 168
    :cond_8
    iget-object p1, p0, Lzipkin2/internal/V1JsonSpanReader;->builder:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1, v0, v3}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    :cond_9
    :goto_1
    return-void

    .line 160
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No key at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readList([BLjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-static {}, Lzipkin2/v1/V1SpanConverter;->create()Lzipkin2/v1/V1SpanConverter;

    move-result-object v0

    .line 35
    new-instance v2, Lzipkin2/internal/JsonCodec$JsonReader;

    invoke-direct {v2, p1}, Lzipkin2/internal/JsonCodec$JsonReader;-><init>([B)V

    .line 37
    :try_start_0
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 38
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p0, v2}, Lzipkin2/internal/V1JsonSpanReader;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/v1/V1Span;

    move-result-object p1

    .line 41
    invoke-virtual {v0, p1, p2}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v2}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "List<Span>"

    .line 46
    invoke-static {p2, p1}, Lzipkin2/internal/JsonCodec;->exceptionReading(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method

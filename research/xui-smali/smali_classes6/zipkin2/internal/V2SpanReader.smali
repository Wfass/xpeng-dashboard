.class public final Lzipkin2/internal/V2SpanReader;
.super Ljava/lang/Object;
.source "V2SpanReader.java"

# interfaces
.implements Lzipkin2/internal/JsonCodec$JsonReaderAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# static fields
.field static final ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/internal/JsonCodec$JsonReaderAdapter<",
            "Lzipkin2/Endpoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field builder:Lzipkin2/Span$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lzipkin2/internal/V2SpanReader$1;

    invoke-direct {v0}, Lzipkin2/internal/V2SpanReader$1;-><init>()V

    sput-object v0, Lzipkin2/internal/V2SpanReader;->ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
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

    .line 22
    invoke-virtual {p0, p1}, Lzipkin2/internal/V2SpanReader;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/Span;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Lzipkin2/Span;
    .locals 6
    .param p1, "reader"    # Lzipkin2/internal/JsonCodec$JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    if-nez v0, :cond_0

    .line 27
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->clear()Lzipkin2/Span$Builder;

    .line 31
    :goto_0
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 32
    :goto_1
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 33
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "nextName":Ljava/lang/String;
    const-string v1, "traceId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->id(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .line 42
    goto :goto_1

    .line 46
    :cond_3
    const-string v1, "parentId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 47
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    goto/16 :goto_5

    .line 48
    :cond_4
    const-string v1, "kind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzipkin2/Span$Kind;->valueOf(Ljava/lang/String;)Lzipkin2/Span$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    goto/16 :goto_5

    .line 50
    :cond_5
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->name(Ljava/lang/String;)Lzipkin2/Span$Builder;

    goto/16 :goto_5

    .line 52
    :cond_6
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 53
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    goto/16 :goto_5

    .line 54
    :cond_7
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 55
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    goto/16 :goto_5

    .line 56
    :cond_8
    const-string v1, "localEndpoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 57
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    sget-object v2, Lzipkin2/internal/V2SpanReader;->ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-interface {v2, p1}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Endpoint;

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto/16 :goto_5

    .line 58
    :cond_9
    const-string v1, "remoteEndpoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 59
    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    sget-object v2, Lzipkin2/internal/V2SpanReader;->ENDPOINT_READER:Lzipkin2/internal/JsonCodec$JsonReaderAdapter;

    invoke-interface {v2, p1}, Lzipkin2/internal/JsonCodec$JsonReaderAdapter;->fromJson(Lzipkin2/internal/JsonCodec$JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Endpoint;

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto/16 :goto_5

    .line 60
    :cond_a
    const-string v1, "annotations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 61
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginArray()V

    .line 62
    :goto_2
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 63
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "timestamp":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 66
    .local v2, "value":Ljava/lang/String;
    :goto_3
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 67
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v3, "timestamp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 69
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    .line 70
    :cond_b
    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 71
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 73
    :cond_c
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    goto :goto_3

    .line 76
    :cond_d
    if-eqz v1, :cond_e

    if-eqz v2, :cond_e

    .line 79
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 80
    iget-object v3, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    .line 81
    .end local v1    # "timestamp":Ljava/lang/Long;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_2

    .line 77
    .restart local v1    # "timestamp":Ljava/lang/Long;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_e
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

    .line 82
    .end local v1    # "timestamp":Ljava/lang/Long;
    .end local v2    # "value":Ljava/lang/String;
    :cond_f
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endArray()V

    goto/16 :goto_5

    .line 83
    :cond_10
    const-string v1, "tags"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 84
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->beginObject()V

    .line 85
    :goto_4
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 86
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->peekNull()Z

    move-result v2

    if-nez v2, :cond_11

    .line 90
    iget-object v2, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lzipkin2/Span$Builder;->putTag(Ljava/lang/String;Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 91
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_4

    .line 88
    .restart local v1    # "key":Ljava/lang/String;
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No value at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v1    # "key":Ljava/lang/String;
    :cond_12
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    goto :goto_5

    .line 93
    :cond_13
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 94
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->debug(Z)Lzipkin2/Span$Builder;

    goto :goto_5

    .line 95
    :cond_14
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 96
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {v1, v2}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    goto :goto_5

    .line 98
    :cond_15
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->skipValue()V

    .line 100
    .end local v0    # "nextName":Ljava/lang/String;
    :cond_16
    :goto_5
    goto/16 :goto_1

    .line 101
    :cond_17
    invoke-virtual {p1}, Lzipkin2/internal/JsonCodec$JsonReader;->endObject()V

    .line 102
    iget-object v0, p0, Lzipkin2/internal/V2SpanReader;->builder:Lzipkin2/Span$Builder;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "Span"

    return-object v0
.end method

.class public final Lzipkin2/v1/V2SpanConverter;
.super Ljava/lang/Object;
.source "V2SpanConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;
    }
.end annotation


# instance fields
.field final md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

.field final result:Lzipkin2/v1/V1Span$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lzipkin2/v1/V1Span;->newBuilder()Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    .line 34
    new-instance v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    invoke-direct {v0}, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;-><init>()V

    iput-object v0, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    .line 178
    return-void
.end method

.method public static create()Lzipkin2/v1/V2SpanConverter;
    .locals 1

    .line 30
    new-instance v0, Lzipkin2/v1/V2SpanConverter;

    invoke-direct {v0}, Lzipkin2/v1/V2SpanConverter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public convert(Lzipkin2/Span;)Lzipkin2/v1/V1Span;
    .locals 13
    .param p1, "value"    # Lzipkin2/Span;

    .line 37
    iget-object v0, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    invoke-virtual {v0, p1}, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->parse(Lzipkin2/Span;)V

    .line 38
    iget-object v0, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    .line 39
    invoke-virtual {v0}, Lzipkin2/v1/V1Span$Builder;->clear()Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->id(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->name(Ljava/lang/String;)Lzipkin2/v1/V1Span$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lzipkin2/Span;->debug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/v1/V1Span$Builder;->debug(Ljava/lang/Boolean;)Lzipkin2/v1/V1Span$Builder;

    .line 47
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->timestamp(J)Lzipkin2/v1/V1Span$Builder;

    .line 49
    iget-object v0, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {p1}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lzipkin2/v1/V1Span$Builder;->duration(J)Lzipkin2/v1/V1Span$Builder;

    .line 52
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-wide v0, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v0, v0, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 53
    .local v0, "beginAnnotation":Z
    :goto_0
    iget-object v5, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-wide v5, v5, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v2, v2, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    .line 54
    .local v2, "endAnnotation":Z
    :goto_1
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v3

    .line 55
    .local v3, "ep":Lzipkin2/Endpoint;
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 56
    .local v5, "annotationCount":I
    if-eqz v0, :cond_3

    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    iget-object v6, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    iget-object v7, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-wide v7, v7, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->startTs:J

    iget-object v9, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v9, v9, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v3}, Lzipkin2/v1/V1Span$Builder;->addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 60
    :cond_3
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "length":I
    :goto_2
    if-ge v6, v7, :cond_6

    .line 61
    invoke-virtual {p1}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzipkin2/Annotation;

    .line 62
    .local v8, "a":Lzipkin2/Annotation;
    if-eqz v0, :cond_4

    invoke-virtual {v8}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v10, v10, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->begin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .end local v8    # "a":Lzipkin2/Annotation;
    goto :goto_3

    .line 63
    .restart local v8    # "a":Lzipkin2/Annotation;
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v8}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v10, v10, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .end local v8    # "a":Lzipkin2/Annotation;
    goto :goto_3

    .line 64
    .restart local v8    # "a":Lzipkin2/Annotation;
    :cond_5
    iget-object v9, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v8}, Lzipkin2/Annotation;->timestamp()J

    move-result-wide v10

    invoke-virtual {v8}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12, v3}, Lzipkin2/v1/V1Span$Builder;->addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 60
    .end local v8    # "a":Lzipkin2/Annotation;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 66
    .end local v6    # "i":I
    .end local v7    # "length":I
    :cond_6
    if-eqz v2, :cond_7

    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    iget-object v6, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    iget-object v7, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-wide v7, v7, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->endTs:J

    iget-object v9, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v9, v9, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->end:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v3}, Lzipkin2/v1/V1Span$Builder;->addAnnotation(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 71
    :cond_7
    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 72
    .local v7, "b":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v3}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 73
    .end local v7    # "b":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .line 75
    :cond_8
    if-nez v5, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    goto :goto_5

    :cond_9
    move v6, v1

    .line 76
    .local v6, "writeLocalComponent":Z
    :goto_5
    iget-object v7, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v7, v7, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v7

    if-eqz v7, :cond_a

    move v1, v4

    nop

    .line 79
    .local v1, "hasRemoteEndpoint":Z
    :cond_a
    if-eqz v6, :cond_b

    iget-object v4, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    const-string v7, "lc"

    const-string v8, ""

    invoke-virtual {v4, v7, v8, v3}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 80
    :cond_b
    if-eqz v1, :cond_c

    iget-object v4, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    iget-object v7, p0, Lzipkin2/v1/V2SpanConverter;->md:Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;

    iget-object v7, v7, Lzipkin2/v1/V2SpanConverter$V1SpanMetadata;->addr:Ljava/lang/String;

    invoke-virtual {p1}, Lzipkin2/Span;->remoteEndpoint()Lzipkin2/Endpoint;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lzipkin2/v1/V1Span$Builder;->addBinaryAnnotation(Ljava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Span$Builder;

    .line 81
    :cond_c
    iget-object v4, p0, Lzipkin2/v1/V2SpanConverter;->result:Lzipkin2/v1/V1Span$Builder;

    invoke-virtual {v4}, Lzipkin2/v1/V1Span$Builder;->build()Lzipkin2/v1/V1Span;

    move-result-object v4

    return-object v4
.end method

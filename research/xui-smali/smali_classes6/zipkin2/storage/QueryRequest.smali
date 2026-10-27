.class public final Lzipkin2/storage/QueryRequest;
.super Ljava/lang/Object;
.source "QueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/storage/QueryRequest$Builder;
    }
.end annotation


# instance fields
.field final annotationQuery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final endTs:J

.field final limit:I

.field final lookback:J

.field final maxDuration:Ljava/lang/Long;

.field final minDuration:Ljava/lang/Long;

.field final serviceName:Ljava/lang/String;

.field final spanName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;JJI)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p2, "spanName"    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p4, "minDuration"    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p5, "maxDuration"    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p6, "endTs"    # J
    .param p8, "lookback"    # J
    .param p10, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "JJI)V"
        }
    .end annotation

    .line 338
    .local p3, "annotationQuery":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lzipkin2/storage/QueryRequest;->serviceName:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lzipkin2/storage/QueryRequest;->spanName:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lzipkin2/storage/QueryRequest;->annotationQuery:Ljava/util/Map;

    .line 342
    iput-object p4, p0, Lzipkin2/storage/QueryRequest;->minDuration:Ljava/lang/Long;

    .line 343
    iput-object p5, p0, Lzipkin2/storage/QueryRequest;->maxDuration:Ljava/lang/Long;

    .line 344
    iput-wide p6, p0, Lzipkin2/storage/QueryRequest;->endTs:J

    .line 345
    iput-wide p8, p0, Lzipkin2/storage/QueryRequest;->lookback:J

    .line 346
    iput p10, p0, Lzipkin2/storage/QueryRequest;->limit:I

    .line 347
    return-void
.end method

.method public static newBuilder()Lzipkin2/storage/QueryRequest$Builder;
    .locals 1

    .line 125
    new-instance v0, Lzipkin2/storage/QueryRequest$Builder;

    invoke-direct {v0}, Lzipkin2/storage/QueryRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public annotationQuery()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->annotationQuery:Ljava/util/Map;

    return-object v0
.end method

.method public annotationQueryString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->annotationQuery()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 112
    .local v2, "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .end local v2    # "next":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 117
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public endTs()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest;->endTs:J

    return-wide v0
.end method

.method public limit()I
    .locals 1

    .line 98
    iget v0, p0, Lzipkin2/storage/QueryRequest;->limit:I

    return v0
.end method

.method public lookback()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest;->lookback:J

    return-wide v0
.end method

.method public maxDuration()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->maxDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public minDuration()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 69
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->minDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public serviceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public spanName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 50
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->spanName:Ljava/lang/String;

    return-object v0
.end method

.method public test(Ljava/util/List;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 264
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    const-wide/16 v0, 0x0

    .line 265
    .local v0, "timestamp":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;

    .line 266
    .local v3, "span":Lzipkin2/Span;
    invoke-virtual {v3}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_0

    .end local v3    # "span":Lzipkin2/Span;
    goto :goto_0

    .line 267
    .restart local v3    # "span":Lzipkin2/Span;
    :cond_0
    invoke-virtual {v3}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 268
    invoke-virtual {v3}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v0

    .line 269
    goto :goto_1

    .line 271
    :cond_1
    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 272
    :cond_2
    invoke-virtual {v3}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v0

    .line 274
    .end local v3    # "span":Lzipkin2/Span;
    :cond_3
    goto :goto_0

    .line 275
    :cond_4
    :goto_1
    cmp-long v2, v0, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    .line 276
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->endTs()J

    move-result-wide v4

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->lookback()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v0, v4

    if-ltz v2, :cond_19

    .line 277
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->endTs()J

    move-result-wide v4

    mul-long/2addr v4, v6

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    goto/16 :goto_a

    .line 280
    :cond_5
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 281
    .local v2, "serviceNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->maxDuration()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v5

    goto :goto_2

    :cond_6
    move v4, v3

    .line 283
    .local v4, "testedDuration":Z
    :goto_2
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->spanName()Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "spanNameToMatch":Ljava/lang/String;
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->annotationQuery()Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 286
    .local v7, "annotationQueryRemaining":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzipkin2/Span;

    .line 287
    .local v9, "span":Lzipkin2/Span;
    invoke-virtual {v9}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, "localServiceName":Ljava/lang/String;
    if-eqz v10, :cond_7

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_7
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 292
    :cond_8
    invoke-virtual {v9}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lzipkin2/Annotation;

    .line 293
    .local v12, "a":Lzipkin2/Annotation;
    const-string v13, ""

    invoke-virtual {v12}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 294
    invoke-virtual {v12}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v12    # "a":Lzipkin2/Annotation;
    :cond_9
    goto :goto_4

    .line 297
    :cond_a
    invoke-virtual {v9}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 298
    .local v12, "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 299
    .local v13, "value":Ljava/lang/String;
    if-nez v13, :cond_b

    .end local v12    # "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "value":Ljava/lang/String;
    goto :goto_5

    .line 300
    .restart local v12    # "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 301
    :cond_c
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v12    # "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "value":Ljava/lang/String;
    :cond_d
    goto :goto_5

    .line 304
    :cond_e
    if-eqz v6, :cond_f

    invoke-virtual {v9}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 305
    :cond_f
    const/4 v6, 0x0

    .line 309
    :cond_10
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    :cond_11
    if-nez v4, :cond_15

    .line 310
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->maxDuration()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 311
    invoke-virtual {v9}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v11

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-ltz v11, :cond_12

    invoke-virtual {v9}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v11

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->maxDuration()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gtz v11, :cond_12

    move v11, v5

    goto :goto_6

    :cond_12
    move v11, v3

    :goto_6
    move v4, v11

    goto :goto_8

    .line 312
    :cond_13
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 313
    invoke-virtual {v9}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v11

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-ltz v11, :cond_14

    move v11, v5

    goto :goto_7

    :cond_14
    move v11, v3

    :goto_7
    move v4, v11

    .line 316
    .end local v9    # "span":Lzipkin2/Span;
    .end local v10    # "localServiceName":Ljava/lang/String;
    :cond_15
    :goto_8
    goto/16 :goto_3

    .line 317
    :cond_16
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    :cond_17
    if-nez v6, :cond_18

    .line 319
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_18

    if-eqz v4, :cond_18

    .line 317
    move v3, v5

    goto :goto_9

    .line 319
    :cond_18
    nop

    .line 317
    :goto_9
    return v3

    .line 278
    .end local v2    # "serviceNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "testedDuration":Z
    .end local v6    # "spanNameToMatch":Ljava/lang/String;
    .end local v7    # "annotationQueryRemaining":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    :goto_a
    return v3
.end method

.method public toBuilder()Lzipkin2/storage/QueryRequest$Builder;
    .locals 1

    .line 121
    new-instance v0, Lzipkin2/storage/QueryRequest$Builder;

    invoke-direct {v0, p0}, Lzipkin2/storage/QueryRequest$Builder;-><init>(Lzipkin2/storage/QueryRequest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryRequest{serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spanName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->spanName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", annotationQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->annotationQuery:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->minDuration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->maxDuration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzipkin2/storage/QueryRequest;->endTs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lookback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzipkin2/storage/QueryRequest;->lookback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzipkin2/storage/QueryRequest;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

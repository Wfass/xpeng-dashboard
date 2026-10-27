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
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Long;

.field final e:Ljava/lang/Long;

.field final f:J

.field final g:J

.field final h:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;JJI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lzipkin2/storage/QueryRequest;->a:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lzipkin2/storage/QueryRequest;->b:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lzipkin2/storage/QueryRequest;->c:Ljava/util/Map;

    .line 342
    iput-object p4, p0, Lzipkin2/storage/QueryRequest;->d:Ljava/lang/Long;

    .line 343
    iput-object p5, p0, Lzipkin2/storage/QueryRequest;->e:Ljava/lang/Long;

    .line 344
    iput-wide p6, p0, Lzipkin2/storage/QueryRequest;->f:J

    .line 345
    iput-wide p8, p0, Lzipkin2/storage/QueryRequest;->g:J

    .line 346
    iput p10, p0, Lzipkin2/storage/QueryRequest;->h:I

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
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->c:Ljava/util/Map;

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
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->annotationQuery()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 112
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

    if-nez v3, :cond_1

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public endTs()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest;->f:J

    return-wide v0
.end method

.method public limit()I
    .locals 1

    .line 98
    iget v0, p0, Lzipkin2/storage/QueryRequest;->h:I

    return v0
.end method

.method public lookback()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest;->g:J

    return-wide v0
.end method

.method public maxDuration()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public minDuration()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 69
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public serviceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public spanName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 50
    iget-object v0, p0, Lzipkin2/storage/QueryRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public test(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)Z"
        }
    .end annotation

    .line 265
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Span;

    .line 266
    invoke-virtual {v5}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-nez v6, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v5}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 268
    invoke-virtual {v5}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    cmp-long v6, v3, v1

    if-eqz v6, :cond_3

    .line 271
    invoke-virtual {v5}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 272
    :cond_3
    invoke-virtual {v5}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v3

    goto :goto_0

    :cond_4
    :goto_1
    cmp-long v0, v3, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 276
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->endTs()J

    move-result-wide v5

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->lookback()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-ltz v0, :cond_17

    .line 277
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->endTs()J

    move-result-wide v5

    mul-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    goto/16 :goto_7

    .line 280
    :cond_5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 281
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->maxDuration()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v1

    .line 283
    :goto_2
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->spanName()Ljava/lang/String;

    move-result-object v4

    .line 284
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->annotationQuery()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/Span;

    .line 287
    invoke-virtual {v6}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 289
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_8
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 292
    :cond_9
    invoke-virtual {v6}, Lzipkin2/Span;->annotations()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzipkin2/Annotation;

    .line 293
    invoke-virtual {v9}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 294
    invoke-virtual {v9}, Lzipkin2/Annotation;->value()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 297
    :cond_b
    invoke-virtual {v6}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_d

    goto :goto_5

    .line 300
    :cond_d
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 301
    :cond_e
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_f
    if-eqz v4, :cond_10

    .line 304
    invoke-virtual {v6}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    const/4 v4, 0x0

    .line 309
    :cond_11
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_12
    if-nez v2, :cond_7

    .line 310
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->maxDuration()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 311
    invoke-virtual {v6}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v7

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-ltz v2, :cond_13

    invoke-virtual {v6}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v6

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->maxDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_13

    :goto_6
    move v2, v3

    goto/16 :goto_3

    :cond_13
    move v2, v1

    goto/16 :goto_3

    .line 312
    :cond_14
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 313
    invoke-virtual {v6}, Lzipkin2/Span;->durationAsLong()J

    move-result-wide v6

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->minDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-ltz v2, :cond_13

    goto :goto_6

    .line 317
    :cond_15
    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    :cond_16
    if-nez v4, :cond_17

    .line 319
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_17

    if-eqz v2, :cond_17

    move v1, v3

    :cond_17
    :goto_7
    return v1
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

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spanName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", annotationQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/storage/QueryRequest;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzipkin2/storage/QueryRequest;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lookback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lzipkin2/storage/QueryRequest;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzipkin2/storage/QueryRequest;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

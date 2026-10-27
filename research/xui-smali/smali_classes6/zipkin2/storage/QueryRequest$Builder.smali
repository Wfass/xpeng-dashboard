.class public final Lzipkin2/storage/QueryRequest$Builder;
.super Ljava/lang/Object;
.source "QueryRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/QueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field annotationQuery:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field endTs:J

.field limit:I

.field lookback:J

.field maxDuration:Ljava/lang/Long;

.field minDuration:Ljava/lang/Long;

.field serviceName:Ljava/lang/String;

.field spanName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery:Ljava/util/Map;

    .line 254
    return-void
.end method

.method constructor <init>(Lzipkin2/storage/QueryRequest;)V
    .locals 2
    .param p1, "source"    # Lzipkin2/storage/QueryRequest;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery:Ljava/util/Map;

    .line 136
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->spanName:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->annotationQuery:Ljava/util/Map;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery:Ljava/util/Map;

    .line 139
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->minDuration:Ljava/lang/Long;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->minDuration:Ljava/lang/Long;

    .line 140
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->maxDuration:Ljava/lang/Long;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->maxDuration:Ljava/lang/Long;

    .line 141
    iget-wide v0, p1, Lzipkin2/storage/QueryRequest;->endTs:J

    iput-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->endTs:J

    .line 142
    iget-wide v0, p1, Lzipkin2/storage/QueryRequest;->lookback:J

    iput-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->lookback:J

    .line 143
    iget v0, p1, Lzipkin2/storage/QueryRequest;->limit:I

    iput v0, p0, Lzipkin2/storage/QueryRequest$Builder;->limit:I

    .line 144
    return-void
.end method


# virtual methods
.method public annotationQuery(Ljava/util/Map;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lzipkin2/storage/QueryRequest$Builder;"
        }
    .end annotation

    .line 184
    .local p1, "annotationQuery":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 185
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery:Ljava/util/Map;

    .line 186
    return-object p0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationQuery == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final build()Lzipkin2/storage/QueryRequest;
    .locals 12

    .line 221
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    .line 222
    :cond_0
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    .line 225
    :cond_1
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, ""

    iget-object v1, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    .line 227
    :cond_2
    const-string v0, ""

    iget-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "all"

    iget-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-object v1, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    .line 229
    :cond_4
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->endTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 230
    iget v0, p0, Lzipkin2/storage/QueryRequest$Builder;->limit:I

    if-lez v0, :cond_b

    .line 231
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->lookback:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 232
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->minDuration:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->minDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 234
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->maxDuration:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->maxDuration:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->minDuration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    goto :goto_0

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDuration < minDuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minDuration <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_7
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->maxDuration:Ljava/lang/Long;

    if-nez v0, :cond_9

    .line 241
    :cond_8
    :goto_0
    new-instance v0, Lzipkin2/storage/QueryRequest;

    iget-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    iget-object v3, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    iget-object v4, p0, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery:Ljava/util/Map;

    iget-object v5, p0, Lzipkin2/storage/QueryRequest$Builder;->minDuration:Ljava/lang/Long;

    iget-object v6, p0, Lzipkin2/storage/QueryRequest$Builder;->maxDuration:Ljava/lang/Long;

    iget-wide v7, p0, Lzipkin2/storage/QueryRequest$Builder;->endTs:J

    iget-wide v9, p0, Lzipkin2/storage/QueryRequest$Builder;->lookback:J

    iget v11, p0, Lzipkin2/storage/QueryRequest$Builder;->limit:I

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lzipkin2/storage/QueryRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/lang/Long;JJI)V

    return-object v0

    .line 238
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDuration is only valid with minDuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lookback <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "limit <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endTs <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endTs(J)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1, "endTs"    # J

    .line 203
    iput-wide p1, p0, Lzipkin2/storage/QueryRequest$Builder;->endTs:J

    .line 204
    return-object p0
.end method

.method public limit(I)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1, "limit"    # I

    .line 215
    iput p1, p0, Lzipkin2/storage/QueryRequest$Builder;->limit:I

    .line 216
    return-object p0
.end method

.method public lookback(J)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1, "lookback"    # J

    .line 209
    iput-wide p1, p0, Lzipkin2/storage/QueryRequest$Builder;->lookback:J

    .line 210
    return-object p0
.end method

.method public maxDuration(Ljava/lang/Long;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1, "maxDuration"    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 197
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->maxDuration:Ljava/lang/Long;

    .line 198
    return-object p0
.end method

.method public minDuration(Ljava/lang/Long;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1, "minDuration"    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 191
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->minDuration:Ljava/lang/Long;

    .line 192
    return-object p0
.end method

.method public parseAnnotationQuery(Ljava/lang/String;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 11
    .param p1, "annotationQuery"    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 168
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 169
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 170
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, " and "

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 171
    .local v5, "ann":Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 172
    .local v6, "idx":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 173
    const-string v7, ""

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 175
    :cond_1
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "keyValue":[Ljava/lang/String;
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    array-length v10, v7

    if-ge v10, v8, :cond_2

    const-string v8, ""

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v5    # "ann":Ljava/lang/String;
    .end local v6    # "idx":I
    .end local v7    # "keyValue":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p0, v0}, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery(Ljava/util/Map;)Lzipkin2/storage/QueryRequest$Builder;

    move-result-object v1

    return-object v1

    .line 168
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :goto_3
    return-object p0
.end method

.method public serviceName(Ljava/lang/String;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 148
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->serviceName:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public spanName(Ljava/lang/String;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1, "spanName"    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 158
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->spanName:Ljava/lang/String;

    .line 159
    return-object p0
.end method

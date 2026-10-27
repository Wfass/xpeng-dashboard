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
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/Long;

.field e:Ljava/lang/Long;

.field f:J

.field g:J

.field h:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->c:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lzipkin2/storage/QueryRequest;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->c:Ljava/util/Map;

    .line 136
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->a:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->a:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->b:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->c:Ljava/util/Map;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->c:Ljava/util/Map;

    .line 139
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->d:Ljava/lang/Long;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->d:Ljava/lang/Long;

    .line 140
    iget-object v0, p1, Lzipkin2/storage/QueryRequest;->e:Ljava/lang/Long;

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->e:Ljava/lang/Long;

    .line 141
    iget-wide v0, p1, Lzipkin2/storage/QueryRequest;->f:J

    iput-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->f:J

    .line 142
    iget-wide v0, p1, Lzipkin2/storage/QueryRequest;->g:J

    iput-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->g:J

    .line 143
    iget p1, p1, Lzipkin2/storage/QueryRequest;->h:I

    iput p1, p0, Lzipkin2/storage/QueryRequest$Builder;->h:I

    return-void
.end method


# virtual methods
.method public annotationQuery(Ljava/util/Map;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 1
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

    if-eqz p1, :cond_0

    .line 185
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->c:Ljava/util/Map;

    return-object p0

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotationQuery == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final build()Lzipkin2/storage/QueryRequest;
    .locals 12

    .line 221
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->a:Ljava/lang/String;

    .line 222
    :cond_0
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    .line 225
    :cond_1
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->c:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->a:Ljava/lang/String;

    .line 227
    :cond_2
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    .line 229
    :cond_4
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 230
    iget v0, p0, Lzipkin2/storage/QueryRequest$Builder;->h:I

    if-lez v0, :cond_b

    .line 231
    iget-wide v0, p0, Lzipkin2/storage/QueryRequest$Builder;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 232
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->d:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 233
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 234
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->e:Ljava/lang/Long;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->d:Ljava/lang/Long;

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
    iget-object v0, p0, Lzipkin2/storage/QueryRequest$Builder;->e:Ljava/lang/Long;

    if-nez v0, :cond_9

    .line 241
    :cond_8
    :goto_0
    new-instance v0, Lzipkin2/storage/QueryRequest;

    iget-object v2, p0, Lzipkin2/storage/QueryRequest$Builder;->a:Ljava/lang/String;

    iget-object v3, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    iget-object v4, p0, Lzipkin2/storage/QueryRequest$Builder;->c:Ljava/util/Map;

    iget-object v5, p0, Lzipkin2/storage/QueryRequest$Builder;->d:Ljava/lang/Long;

    iget-object v6, p0, Lzipkin2/storage/QueryRequest$Builder;->e:Ljava/lang/Long;

    iget-wide v7, p0, Lzipkin2/storage/QueryRequest$Builder;->f:J

    iget-wide v9, p0, Lzipkin2/storage/QueryRequest$Builder;->g:J

    iget v11, p0, Lzipkin2/storage/QueryRequest$Builder;->h:I

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

    .line 203
    iput-wide p1, p0, Lzipkin2/storage/QueryRequest$Builder;->f:J

    return-object p0
.end method

.method public limit(I)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0

    .line 215
    iput p1, p0, Lzipkin2/storage/QueryRequest$Builder;->h:I

    return-object p0
.end method

.method public lookback(J)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0

    .line 209
    iput-wide p1, p0, Lzipkin2/storage/QueryRequest$Builder;->g:J

    return-object p0
.end method

.method public maxDuration(Ljava/lang/Long;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 197
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public minDuration(Ljava/lang/Long;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 191
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public parseAnnotationQuery(Ljava/lang/String;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 169
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v1, 0x64

    const-string v2, " and "

    .line 170
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    const/16 v5, 0x3d

    .line 171
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const-string v7, ""

    if-ne v5, v6, :cond_1

    .line 173
    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/4 v6, 0x2

    const-string v8, "="

    .line 175
    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 176
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    array-length v8, v8

    if-ge v8, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p0, v0}, Lzipkin2/storage/QueryRequest$Builder;->annotationQuery(Ljava/util/Map;)Lzipkin2/storage/QueryRequest$Builder;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_3
    return-object p0
.end method

.method public serviceName(Ljava/lang/String;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 148
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public spanName(Ljava/lang/String;)Lzipkin2/storage/QueryRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 158
    iput-object p1, p0, Lzipkin2/storage/QueryRequest$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

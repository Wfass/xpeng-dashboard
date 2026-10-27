.class public final Lzipkin2/v1/V1Span;
.super Ljava/lang/Object;
.source "V1Span.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/v1/V1Span$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final EMPTY_ENDPOINT:Lzipkin2/Endpoint;


# instance fields
.field final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/v1/V1Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final binaryAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/v1/V1BinaryAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field final debug:Ljava/lang/Boolean;

.field final duration:J

.field final id:J

.field final name:Ljava/lang/String;

.field final parentId:J

.field final timestamp:J

.field final traceId:J

.field final traceIdHigh:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    sput-object v0, Lzipkin2/v1/V1Span;->EMPTY_ENDPOINT:Lzipkin2/Endpoint;

    return-void
.end method

.method constructor <init>(Lzipkin2/v1/V1Span$Builder;)V
    .locals 4
    .param p1, "builder"    # Lzipkin2/v1/V1Span$Builder;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->traceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 120
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 121
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->traceId:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->traceId:J

    .line 122
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->traceIdHigh:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->traceIdHigh:J

    .line 123
    iget-object v0, p1, Lzipkin2/v1/V1Span$Builder;->name:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    .line 124
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->id:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->id:J

    .line 125
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->parentId:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->parentId:J

    .line 126
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->timestamp:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->timestamp:J

    .line 127
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->duration:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->duration:J

    .line 128
    iget-object v0, p1, Lzipkin2/v1/V1Span$Builder;->annotations:Ljava/util/ArrayList;

    invoke-static {v0}, Lzipkin2/v1/V1Span;->sortedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    .line 129
    iget-object v0, p1, Lzipkin2/v1/V1Span$Builder;->binaryAnnotations:Ljava/util/ArrayList;

    invoke-static {v0}, Lzipkin2/v1/V1Span;->sortedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    .line 130
    iget-object v0, p1, Lzipkin2/v1/V1Span$Builder;->debug:Ljava/lang/Boolean;

    iput-object v0, p0, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    .line 131
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "traceId == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newBuilder()Lzipkin2/v1/V1Span$Builder;
    .locals 1

    .line 134
    new-instance v0, Lzipkin2/v1/V1Span$Builder;

    invoke-direct {v0}, Lzipkin2/v1/V1Span$Builder;-><init>()V

    return-object v0
.end method

.method static sortedList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 327
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public annotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzipkin2/v1/V1Annotation;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public binaryAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzipkin2/v1/V1BinaryAnnotation;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public debug()Ljava/lang/Boolean;
    .locals 1

    .line 92
    iget-object v0, p0, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    return-object v0
.end method

.method public duration()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->duration:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 285
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 286
    :cond_0
    instance-of v1, p1, Lzipkin2/v1/V1Span;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 287
    :cond_1
    move-object v1, p1

    check-cast v1, Lzipkin2/v1/V1Span;

    .line 288
    .local v1, "that":Lzipkin2/v1/V1Span;
    iget-wide v3, p0, Lzipkin2/v1/V1Span;->traceIdHigh:J

    iget-wide v5, v1, Lzipkin2/v1/V1Span;->traceIdHigh:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->traceId:J

    iget-wide v5, v1, Lzipkin2/v1/V1Span;->traceId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    .line 290
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-wide v3, p0, Lzipkin2/v1/V1Span;->id:J

    iget-wide v5, v1, Lzipkin2/v1/V1Span;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->parentId:J

    iget-wide v5, v1, Lzipkin2/v1/V1Span;->parentId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->timestamp:J

    iget-wide v5, v1, Lzipkin2/v1/V1Span;->timestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->duration:J

    iget-wide v5, v1, Lzipkin2/v1/V1Span;->duration:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v3, p0, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    iget-object v4, v1, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    .line 295
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    iget-object v4, v1, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    .line 296
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    iget-object v3, v1, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    iget-object v4, v1, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    .line 297
    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    .line 288
    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 11

    .line 302
    const/4 v0, 0x1

    .line 303
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 304
    int-to-long v2, v0

    iget-wide v4, p0, Lzipkin2/v1/V1Span;->traceIdHigh:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    iget-wide v7, p0, Lzipkin2/v1/V1Span;->traceIdHigh:J

    xor-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 305
    mul-int/2addr v0, v1

    .line 306
    int-to-long v2, v0

    iget-wide v4, p0, Lzipkin2/v1/V1Span;->traceId:J

    ushr-long/2addr v4, v6

    iget-wide v7, p0, Lzipkin2/v1/V1Span;->traceId:J

    xor-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 307
    mul-int/2addr v0, v1

    .line 308
    iget-object v2, p0, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    .line 309
    mul-int/2addr v0, v1

    .line 310
    int-to-long v4, v0

    iget-wide v7, p0, Lzipkin2/v1/V1Span;->id:J

    ushr-long/2addr v7, v6

    iget-wide v9, p0, Lzipkin2/v1/V1Span;->id:J

    xor-long/2addr v7, v9

    xor-long/2addr v4, v7

    long-to-int v2, v4

    xor-int/2addr v0, v2

    .line 311
    mul-int/2addr v0, v1

    .line 312
    int-to-long v4, v0

    iget-wide v7, p0, Lzipkin2/v1/V1Span;->parentId:J

    ushr-long/2addr v7, v6

    iget-wide v9, p0, Lzipkin2/v1/V1Span;->parentId:J

    xor-long/2addr v7, v9

    xor-long/2addr v4, v7

    long-to-int v2, v4

    xor-int/2addr v0, v2

    .line 313
    mul-int/2addr v0, v1

    .line 314
    int-to-long v4, v0

    iget-wide v7, p0, Lzipkin2/v1/V1Span;->timestamp:J

    ushr-long/2addr v7, v6

    iget-wide v9, p0, Lzipkin2/v1/V1Span;->timestamp:J

    xor-long/2addr v7, v9

    xor-long/2addr v4, v7

    long-to-int v2, v4

    xor-int/2addr v0, v2

    .line 315
    mul-int/2addr v0, v1

    .line 316
    int-to-long v4, v0

    iget-wide v7, p0, Lzipkin2/v1/V1Span;->duration:J

    ushr-long v6, v7, v6

    iget-wide v8, p0, Lzipkin2/v1/V1Span;->duration:J

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    .line 317
    mul-int/2addr v0, v1

    .line 318
    iget-object v2, p0, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 319
    mul-int/2addr v0, v1

    .line 320
    iget-object v2, p0, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 321
    mul-int/2addr v0, v1

    .line 322
    iget-object v1, p0, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    .line 323
    return v0
.end method

.method public id()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->id:J

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    return-object v0
.end method

.method public parentId()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->parentId:J

    return-wide v0
.end method

.method public serviceNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 98
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/v1/V1Annotation;

    .line 99
    .local v2, "a":Lzipkin2/v1/V1Annotation;
    iget-object v3, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    if-nez v3, :cond_0

    .end local v2    # "a":Lzipkin2/v1/V1Annotation;
    goto :goto_0

    .line 100
    .restart local v2    # "a":Lzipkin2/v1/V1Annotation;
    :cond_0
    iget-object v3, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {v3}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .end local v2    # "a":Lzipkin2/v1/V1Annotation;
    goto :goto_0

    .line 101
    .restart local v2    # "a":Lzipkin2/v1/V1Annotation;
    :cond_1
    iget-object v3, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {v3}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "a":Lzipkin2/v1/V1Annotation;
    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/v1/V1BinaryAnnotation;

    .line 104
    .local v2, "a":Lzipkin2/v1/V1BinaryAnnotation;
    iget-object v3, v2, Lzipkin2/v1/V1BinaryAnnotation;->endpoint:Lzipkin2/Endpoint;

    if-nez v3, :cond_3

    .end local v2    # "a":Lzipkin2/v1/V1BinaryAnnotation;
    goto :goto_1

    .line 105
    .restart local v2    # "a":Lzipkin2/v1/V1BinaryAnnotation;
    :cond_3
    iget-object v3, v2, Lzipkin2/v1/V1BinaryAnnotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {v3}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .end local v2    # "a":Lzipkin2/v1/V1BinaryAnnotation;
    goto :goto_1

    .line 106
    .restart local v2    # "a":Lzipkin2/v1/V1BinaryAnnotation;
    :cond_4
    iget-object v3, v2, Lzipkin2/v1/V1BinaryAnnotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {v3}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v2    # "a":Lzipkin2/v1/V1BinaryAnnotation;
    goto :goto_1

    .line 108
    :cond_5
    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->timestamp:J

    return-wide v0
.end method

.method public traceId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->traceId:J

    return-wide v0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->traceIdHigh:J

    return-wide v0
.end method

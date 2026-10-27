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
.field static final a:Lzipkin2/Endpoint;


# instance fields
.field final b:J

.field final c:J

.field final d:J

.field final e:Ljava/lang/String;

.field final f:J

.field final g:J

.field final h:J

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/v1/V1Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/v1/V1BinaryAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    sput-object v0, Lzipkin2/v1/V1Span;->a:Lzipkin2/Endpoint;

    return-void
.end method

.method constructor <init>(Lzipkin2/v1/V1Span$Builder;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 120
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 121
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->b:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->c:J

    .line 122
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->a:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->b:J

    .line 123
    iget-object v0, p1, Lzipkin2/v1/V1Span$Builder;->e:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/v1/V1Span;->e:Ljava/lang/String;

    .line 124
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->d:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->d:J

    .line 125
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->c:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->f:J

    .line 126
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->f:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->g:J

    .line 127
    iget-wide v0, p1, Lzipkin2/v1/V1Span$Builder;->g:J

    iput-wide v0, p0, Lzipkin2/v1/V1Span;->h:J

    .line 128
    iget-object v0, p1, Lzipkin2/v1/V1Span$Builder;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Lzipkin2/v1/V1Span;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

    .line 129
    iget-object v0, p1, Lzipkin2/v1/V1Span$Builder;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lzipkin2/v1/V1Span;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

    .line 130
    iget-object p1, p1, Lzipkin2/v1/V1Span$Builder;->j:Ljava/lang/Boolean;

    iput-object p1, p0, Lzipkin2/v1/V1Span;->k:Ljava/lang/Boolean;

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "traceId == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Ljava/util/List;)Ljava/util/List;
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

    if-nez p0, :cond_0

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 328
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lzipkin2/v1/V1Span$Builder;
    .locals 1

    .line 134
    new-instance v0, Lzipkin2/v1/V1Span$Builder;

    invoke-direct {v0}, Lzipkin2/v1/V1Span$Builder;-><init>()V

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
    iget-object v0, p0, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

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
    iget-object v0, p0, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

    return-object v0
.end method

.method public debug()Ljava/lang/Boolean;
    .locals 1

    .line 92
    iget-object v0, p0, Lzipkin2/v1/V1Span;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public duration()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->h:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

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
    check-cast p1, Lzipkin2/v1/V1Span;

    .line 288
    iget-wide v3, p0, Lzipkin2/v1/V1Span;->b:J

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->c:J

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lzipkin2/v1/V1Span;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lzipkin2/v1/V1Span;->e:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lzipkin2/v1/V1Span;->e:Ljava/lang/String;

    .line 290
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-wide v3, p0, Lzipkin2/v1/V1Span;->d:J

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->f:J

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->f:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->g:J

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-wide v3, p0, Lzipkin2/v1/V1Span;->h:J

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

    iget-object v3, p1, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

    .line 295
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

    iget-object v3, p1, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

    .line 296
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lzipkin2/v1/V1Span;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    iget-object p1, p1, Lzipkin2/v1/V1Span;->k:Ljava/lang/Boolean;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lzipkin2/v1/V1Span;->k:Ljava/lang/Boolean;

    .line 297
    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 12

    const v0, 0xf4243

    int-to-long v1, v0

    .line 304
    iget-wide v3, p0, Lzipkin2/v1/V1Span;->b:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v1, v0

    mul-int/2addr v1, v0

    int-to-long v2, v1

    .line 306
    iget-wide v6, p0, Lzipkin2/v1/V1Span;->c:J

    ushr-long v8, v6, v5

    xor-long/2addr v6, v8

    xor-long/2addr v2, v6

    long-to-int v2, v2

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 308
    iget-object v2, p0, Lzipkin2/v1/V1Span;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    int-to-long v6, v1

    .line 310
    iget-wide v8, p0, Lzipkin2/v1/V1Span;->d:J

    ushr-long v10, v8, v5

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    int-to-long v6, v1

    .line 312
    iget-wide v8, p0, Lzipkin2/v1/V1Span;->f:J

    ushr-long v10, v8, v5

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    int-to-long v6, v1

    .line 314
    iget-wide v8, p0, Lzipkin2/v1/V1Span;->g:J

    ushr-long v10, v8, v5

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    long-to-int v2, v6

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    int-to-long v6, v1

    .line 316
    iget-wide v8, p0, Lzipkin2/v1/V1Span;->h:J

    ushr-long v4, v8, v5

    xor-long/2addr v4, v8

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 318
    iget-object v2, p0, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 320
    iget-object v2, p0, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    mul-int/2addr v1, v0

    .line 322
    iget-object v0, p0, Lzipkin2/v1/V1Span;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    xor-int v0, v1, v3

    return v0
.end method

.method public id()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->d:J

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lzipkin2/v1/V1Span;->e:Ljava/lang/String;

    return-object v0
.end method

.method public parentId()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->f:J

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
    iget-object v1, p0, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

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
    iget-object v3, v2, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    if-nez v3, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v3, v2, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {v3}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {v2}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

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
    iget-object v3, v2, Lzipkin2/v1/V1BinaryAnnotation;->d:Lzipkin2/Endpoint;

    if-nez v3, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    iget-object v3, v2, Lzipkin2/v1/V1BinaryAnnotation;->d:Lzipkin2/Endpoint;

    invoke-virtual {v3}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 106
    :cond_4
    iget-object v2, v2, Lzipkin2/v1/V1BinaryAnnotation;->d:Lzipkin2/Endpoint;

    invoke-virtual {v2}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->g:J

    return-wide v0
.end method

.method public traceId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->c:J

    return-wide v0
.end method

.method public traceIdHigh()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lzipkin2/v1/V1Span;->b:J

    return-wide v0
.end method

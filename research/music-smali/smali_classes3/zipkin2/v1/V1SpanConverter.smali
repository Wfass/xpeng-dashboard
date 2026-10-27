.class public final Lzipkin2/v1/V1SpanConverter;
.super Ljava/lang/Object;
.source "V1SpanConverter.java"


# instance fields
.field final a:Lzipkin2/Span$Builder;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/Span$Builder;",
            ">;"
        }
    .end annotation
.end field

.field c:Lzipkin2/v1/V1Annotation;

.field d:Lzipkin2/v1/V1Annotation;

.field e:Lzipkin2/v1/V1Annotation;

.field f:Lzipkin2/v1/V1Annotation;

.field g:Lzipkin2/v1/V1Annotation;

.field h:Lzipkin2/v1/V1Annotation;

.field i:Lzipkin2/v1/V1Annotation;

.field j:Lzipkin2/v1/V1Annotation;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    return-void
.end method

.method static a(Lzipkin2/Span$Builder;Lzipkin2/v1/V1Span;)Lzipkin2/Span$Builder;
    .locals 4

    .line 316
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->b:J

    iget-wide v2, p1, Lzipkin2/v1/V1Span;->c:J

    .line 317
    invoke-virtual {p0, v0, v1, v2, v3}, Lzipkin2/Span$Builder;->traceId(JJ)Lzipkin2/Span$Builder;

    move-result-object p0

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->f:J

    .line 318
    invoke-virtual {p0, v0, v1}, Lzipkin2/Span$Builder;->parentId(J)Lzipkin2/Span$Builder;

    move-result-object p0

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->d:J

    .line 319
    invoke-virtual {p0, v0, v1}, Lzipkin2/Span$Builder;->id(J)Lzipkin2/Span$Builder;

    move-result-object p0

    iget-object v0, p1, Lzipkin2/v1/V1Span;->e:Ljava/lang/String;

    .line 320
    invoke-virtual {p0, v0}, Lzipkin2/Span$Builder;->name(Ljava/lang/String;)Lzipkin2/Span$Builder;

    move-result-object p0

    iget-object p1, p1, Lzipkin2/v1/V1Span;->k:Ljava/lang/Boolean;

    .line 321
    invoke-virtual {p0, p1}, Lzipkin2/Span$Builder;->debug(Ljava/lang/Boolean;)Lzipkin2/Span$Builder;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static a(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z
    .locals 0
    .param p1    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 308
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lzipkin2/v1/V1SpanConverter;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static a(Lzipkin2/Span$Builder;Lzipkin2/Endpoint;)Z
    .locals 1

    .line 286
    invoke-virtual {p0}, Lzipkin2/Span$Builder;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    const/4 p0, 0x1

    return p0

    .line 291
    :cond_0
    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result p0

    return p0
.end method

.method static a(Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Span;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 199
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->g:J

    iget-wide v2, p1, Lzipkin2/v1/V1Span;->h:J

    add-long/2addr v0, v2

    iget-wide p0, p0, Lzipkin2/v1/V1Annotation;->a:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static create()Lzipkin2/v1/V1SpanConverter;
    .locals 1

    .line 32
    new-instance v0, Lzipkin2/v1/V1SpanConverter;

    invoke-direct {v0}, Lzipkin2/v1/V1SpanConverter;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;
    .locals 4
    .param p2    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 276
    iget-object p1, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    return-object p1

    .line 277
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    invoke-static {v0, p2}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Span$Builder;Lzipkin2/Endpoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 279
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span$Builder;

    .line 280
    invoke-static {v2, p2}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Span$Builder;Lzipkin2/Endpoint;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {p0, p1, p2}, Lzipkin2/v1/V1SpanConverter;->b(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)V"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 303
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span$Builder;

    invoke-virtual {v2}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lzipkin2/Span$Builder;)V
    .locals 3

    .line 189
    sget-object v0, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {p1}, Lzipkin2/Span$Builder;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->a:J

    invoke-virtual {p1, v0, v1}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 191
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {p1}, Lzipkin2/Span$Builder;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->a:J

    invoke-virtual {p1, v0, v1}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 194
    :cond_2
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    :cond_3
    :goto_0
    return-void
.end method

.method a(Lzipkin2/v1/V1Span;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->clear()Lzipkin2/Span$Builder;

    .line 56
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->i:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    .line 58
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Span$Builder;Lzipkin2/v1/V1Span;)Lzipkin2/Span$Builder;

    return-void
.end method

.method a(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V
    .locals 5
    .param p3    # Lzipkin2/v1/V1Annotation;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 206
    iget-object v0, p2, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 207
    iget-wide v1, p1, Lzipkin2/v1/V1Span;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->h:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 208
    iget-wide p2, p1, Lzipkin2/v1/V1Span;->g:J

    invoke-virtual {v0, p2, p3}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object p2

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->h:J

    invoke-virtual {p2, v0, v1}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 210
    :cond_0
    iget-wide v1, p2, Lzipkin2/v1/V1Annotation;->a:J

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    if-eqz p3, :cond_1

    .line 211
    iget-wide v1, p3, Lzipkin2/v1/V1Annotation;->a:J

    iget-wide p1, p2, Lzipkin2/v1/V1Annotation;->a:J

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method b(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;
    .locals 1

    .line 295
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Span$Builder;Lzipkin2/v1/V1Span;)Lzipkin2/Span$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    .line 296
    iget-object p2, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method b(Lzipkin2/v1/V1Span;)V
    .locals 10

    .line 62
    iget-object v0, p1, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "sr"

    const-string v3, "cs"

    if-ge v1, v0, :cond_9

    .line 63
    iget-object v4, p1, Lzipkin2/v1/V1Span;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/v1/V1Annotation;

    .line 64
    iget-object v5, v4, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v5}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v5

    .line 66
    iget-object v6, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    iget-object v6, v4, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    if-eqz v6, :cond_8

    .line 67
    iget-object v6, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    sget-object v2, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 69
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    goto/16 :goto_1

    .line 70
    :cond_0
    iget-object v3, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    sget-object v2, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 72
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    goto/16 :goto_1

    .line 73
    :cond_1
    iget-object v2, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    const-string v3, "ss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    sget-object v2, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 75
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 76
    :cond_2
    iget-object v2, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    const-string v3, "cr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    sget-object v2, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 78
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 79
    :cond_3
    iget-object v2, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    sget-object v2, Lzipkin2/Span$Kind;->PRODUCER:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 81
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 82
    :cond_4
    iget-object v2, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    const-string v3, "mr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    sget-object v2, Lzipkin2/Span$Kind;->CONSUMER:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 84
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 85
    :cond_5
    iget-object v2, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    const-string v3, "ws"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->i:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 87
    :cond_6
    iget-object v2, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    const-string v3, "wr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    iput-object v4, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 90
    :cond_7
    iget-wide v2, v4, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v4, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v3, v4}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    goto :goto_1

    .line 93
    :cond_8
    iget-wide v2, v4, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v4, v4, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v3, v4}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 98
    :cond_9
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_a

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Span;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->g:J

    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    iget-object v4, v4, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-static {v0, v1, v3, v4}, Lzipkin2/v1/V1Annotation;->create(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Annotation;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    .line 101
    :cond_a
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_b

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Span;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->g:J

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-static {v0, v1, v2, v3}, Lzipkin2/v1/V1Annotation;->create(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Annotation;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    .line 105
    :cond_b
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    if-eqz v5, :cond_e

    .line 107
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v5}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    .line 110
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 112
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    iget-object v5, v5, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    iget-object v6, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    iget-object v6, v6, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-static {v5, v6}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 113
    sget-object v5, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v0, v5}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 115
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    iget-object v5, v5, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v5}, Lzipkin2/v1/V1SpanConverter;->b(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v5

    sget-object v6, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v6}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    move-result-object v5

    goto :goto_2

    .line 117
    :cond_c
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    iget-object v5, v5, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v5}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v5

    .line 121
    :goto_2
    invoke-virtual {v5, v4}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    move-result-object v6

    iget-object v7, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    iget-wide v7, v7, Lzipkin2/v1/V1Annotation;->a:J

    invoke-virtual {v6, v7, v8}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 122
    iget-object v6, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    if-eqz v6, :cond_d

    iget-wide v6, v6, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v8, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    iget-wide v8, v8, Lzipkin2/v1/V1Annotation;->a:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    .line 123
    :cond_d
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    if-nez v5, :cond_11

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->h:J

    cmp-long v5, v5, v2

    if-nez v5, :cond_11

    invoke-virtual {v0, v1}, Lzipkin2/Span$Builder;->duration(Ljava/lang/Long;)Lzipkin2/Span$Builder;

    goto :goto_3

    .line 124
    :cond_e
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_f

    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    if-eqz v5, :cond_f

    .line 125
    invoke-virtual {p0, p1, v0, v5}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_3

    .line 126
    :cond_f
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_10

    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    if-eqz v5, :cond_10

    .line 127
    invoke-virtual {p0, p1, v0, v5}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_3

    .line 129
    :cond_10
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->c(Lzipkin2/v1/V1Span;)V

    .line 134
    :cond_11
    :goto_3
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_13

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_13

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->g:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_13

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->h:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_13

    .line 140
    :cond_12
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    .line 144
    :cond_13
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_17

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    if-eqz v2, :cond_17

    .line 146
    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-static {v2, v3}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 149
    sget-object v2, Lzipkin2/Span$Kind;->PRODUCER:Lzipkin2/Span$Kind;

    invoke-virtual {v0, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 151
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v2}, Lzipkin2/v1/V1SpanConverter;->b(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    sget-object v2, Lzipkin2/Span$Kind;->CONSUMER:Lzipkin2/Span$Kind;

    invoke-virtual {p1, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    move-result-object p1

    goto :goto_4

    .line 153
    :cond_14
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v2}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    .line 156
    :goto_4
    invoke-virtual {p1, v4}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    .line 157
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    if-eqz v2, :cond_15

    .line 158
    iget-wide v2, v2, Lzipkin2/v1/V1Annotation;->a:J

    invoke-virtual {p1, v2, v3}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object p1

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    iget-wide v2, v2, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    iget-wide v4, v4, Lzipkin2/v1/V1Annotation;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    goto :goto_5

    .line 160
    :cond_15
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    iget-wide v2, v2, Lzipkin2/v1/V1Annotation;->a:J

    invoke-virtual {p1, v2, v3}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 163
    :goto_5
    iget-object p1, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    iget-wide v2, p1, Lzipkin2/v1/V1Annotation;->a:J

    invoke-virtual {v0, v2, v3}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object p1

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->i:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_16

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    iget-wide v2, v2, Lzipkin2/v1/V1Annotation;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_16
    invoke-virtual {p1, v1}, Lzipkin2/Span$Builder;->duration(Ljava/lang/Long;)Lzipkin2/Span$Builder;

    goto :goto_6

    .line 164
    :cond_17
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_18

    .line 165
    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->i:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_6

    .line 166
    :cond_18
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_1a

    .line 167
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    if-eqz v2, :cond_19

    .line 168
    invoke-virtual {p0, p1, v2, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_6

    .line 170
    :cond_19
    invoke-virtual {p0, p1, v0, v1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_6

    .line 173
    :cond_1a
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->i:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->i:Lzipkin2/v1/V1Annotation;

    iget-wide v1, v1, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->i:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    .line 174
    :cond_1b
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->a:J

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->j:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    :cond_1c
    :goto_6
    return-void
.end method

.method c(Lzipkin2/v1/V1Span;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    invoke-virtual {p0, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Span$Builder;)V

    .line 180
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 181
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span$Builder;

    invoke-virtual {p0, v2}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Span$Builder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->a:Lzipkin2/Span$Builder;

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->g:J

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->h:J

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    :cond_1
    return-void
.end method

.method public convert(Lzipkin2/v1/V1Span;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/v1/V1Span;",
            ")",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V

    return-object v0
.end method

.method public convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/v1/V1Span;",
            "Ljava/util/Collection<",
            "Lzipkin2/Span;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;)V

    .line 48
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->b(Lzipkin2/v1/V1Span;)V

    .line 50
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->d(Lzipkin2/v1/V1Span;)V

    .line 51
    invoke-virtual {p0, p2}, Lzipkin2/v1/V1SpanConverter;->a(Ljava/util/Collection;)V

    return-void
.end method

.method d(Lzipkin2/v1/V1Span;)V
    .locals 11

    .line 217
    iget-object v0, p1, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :goto_0
    if-ge v3, v0, :cond_5

    .line 218
    iget-object v7, p1, Lzipkin2/v1/V1Span;->j:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzipkin2/v1/V1BinaryAnnotation;

    .line 219
    iget-object v8, v7, Lzipkin2/v1/V1BinaryAnnotation;->b:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 220
    iget-object v8, v7, Lzipkin2/v1/V1BinaryAnnotation;->a:Ljava/lang/String;

    const-string v9, "ca"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    iget-object v4, v7, Lzipkin2/v1/V1BinaryAnnotation;->d:Lzipkin2/Endpoint;

    goto :goto_1

    .line 222
    :cond_0
    iget-object v8, v7, Lzipkin2/v1/V1BinaryAnnotation;->a:Ljava/lang/String;

    const-string v9, "sa"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 223
    iget-object v5, v7, Lzipkin2/v1/V1BinaryAnnotation;->d:Lzipkin2/Endpoint;

    goto :goto_1

    .line 224
    :cond_1
    iget-object v8, v7, Lzipkin2/v1/V1BinaryAnnotation;->a:Ljava/lang/String;

    const-string v9, "ma"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 225
    iget-object v6, v7, Lzipkin2/v1/V1BinaryAnnotation;->d:Lzipkin2/Endpoint;

    goto :goto_1

    .line 230
    :cond_2
    iget-object v8, v7, Lzipkin2/v1/V1BinaryAnnotation;->d:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v8}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v8

    .line 233
    iget-object v9, v7, Lzipkin2/v1/V1BinaryAnnotation;->a:Ljava/lang/String;

    const-string v10, "lc"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v7, Lzipkin2/v1/V1BinaryAnnotation;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 234
    :cond_3
    iget-object v9, v7, Lzipkin2/v1/V1BinaryAnnotation;->a:Ljava/lang/String;

    iget-object v7, v7, Lzipkin2/v1/V1BinaryAnnotation;->b:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Lzipkin2/Span$Builder;->putTag(Ljava/lang/String;Ljava/lang/String;)Lzipkin2/Span$Builder;

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_5
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_6

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_6

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_6

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_a

    if-nez v4, :cond_7

    if-eqz v5, :cond_a

    :cond_7
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 241
    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    .line 244
    invoke-virtual {p0, p1, v2}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_2

    .line 246
    :cond_9
    invoke-virtual {p0, p1, v2}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    sget-object v0, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {p1, v0}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    :goto_2
    return-void

    .line 251
    :cond_a
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->d:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->e:Lzipkin2/v1/V1Annotation;

    :goto_3
    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    .line 252
    iget-object v1, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {v4, v1}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 255
    iget-object v1, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-static {v4, v1}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 256
    invoke-virtual {v4}, Lzipkin2/Endpoint;->toBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v4

    .line 258
    :cond_c
    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    :cond_d
    if-eqz v5, :cond_f

    .line 261
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->c:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_e

    .line 262
    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_4

    .line 263
    :cond_e
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->f:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_f

    .line 264
    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    :cond_f
    :goto_4
    if-eqz v6, :cond_11

    .line 270
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->g:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 271
    :cond_10
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->h:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->c:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->a(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    :cond_11
    return-void
.end method

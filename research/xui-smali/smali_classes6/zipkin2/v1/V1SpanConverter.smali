.class public final Lzipkin2/v1/V1SpanConverter;
.super Ljava/lang/Object;
.source "V1SpanConverter.java"


# instance fields
.field cr:Lzipkin2/v1/V1Annotation;

.field cs:Lzipkin2/v1/V1Annotation;

.field final first:Lzipkin2/Span$Builder;

.field mr:Lzipkin2/v1/V1Annotation;

.field ms:Lzipkin2/v1/V1Annotation;

.field final spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzipkin2/Span$Builder;",
            ">;"
        }
    .end annotation
.end field

.field sr:Lzipkin2/v1/V1Annotation;

.field ss:Lzipkin2/v1/V1Annotation;

.field wr:Lzipkin2/v1/V1Annotation;

.field ws:Lzipkin2/v1/V1Annotation;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    .line 324
    return-void
.end method

.method static closeEnoughEndpoint(Lzipkin2/Span$Builder;Lzipkin2/Endpoint;)Z
    .locals 2
    .param p0, "builder"    # Lzipkin2/Span$Builder;
    .param p1, "e"    # Lzipkin2/Endpoint;

    .line 286
    invoke-virtual {p0}, Lzipkin2/Span$Builder;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    .line 287
    .local v0, "localEndpoint":Lzipkin2/Endpoint;
    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 289
    const/4 v1, 0x1

    return v1

    .line 291
    :cond_0
    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->hasSameServiceName(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result v1

    return v1
.end method

.method public static create()Lzipkin2/v1/V1SpanConverter;
    .locals 1

    .line 32
    new-instance v0, Lzipkin2/v1/V1SpanConverter;

    invoke-direct {v0}, Lzipkin2/v1/V1SpanConverter;-><init>()V

    return-object v0
.end method

.method static endTimestampReflectsSpanDuration(Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Span;)Z
    .locals 4
    .param p0, "end"    # Lzipkin2/v1/V1Annotation;
    .param p1, "source"    # Lzipkin2/v1/V1Span;

    .line 199
    if-eqz p0, :cond_0

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->duration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lzipkin2/v1/V1Span;->timestamp:J

    iget-wide v2, p1, Lzipkin2/v1/V1Span;->duration:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lzipkin2/v1/V1Annotation;->timestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 312
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static hasSameServiceName(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z
    .locals 2
    .param p0, "left"    # Lzipkin2/Endpoint;
    .param p1, "right"    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 308
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzipkin2/v1/V1SpanConverter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static newBuilder(Lzipkin2/Span$Builder;Lzipkin2/v1/V1Span;)Lzipkin2/Span$Builder;
    .locals 4
    .param p0, "builder"    # Lzipkin2/Span$Builder;
    .param p1, "source"    # Lzipkin2/v1/V1Span;

    .line 316
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->traceIdHigh:J

    iget-wide v2, p1, Lzipkin2/v1/V1Span;->traceId:J

    .line 317
    invoke-virtual {p0, v0, v1, v2, v3}, Lzipkin2/Span$Builder;->traceId(JJ)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->parentId:J

    .line 318
    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->parentId(J)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->id:J

    .line 319
    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->id(J)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-object v1, p1, Lzipkin2/v1/V1Span;->name:Ljava/lang/String;

    .line 320
    invoke-virtual {v0, v1}, Lzipkin2/Span$Builder;->name(Ljava/lang/String;)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-object v1, p1, Lzipkin2/v1/V1Span;->debug:Ljava/lang/Boolean;

    .line 321
    invoke-virtual {v0, v1}, Lzipkin2/Span$Builder;->debug(Ljava/lang/Boolean;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 316
    return-object v0
.end method


# virtual methods
.method public convert(Lzipkin2/v1/V1Span;)Ljava/util/List;
    .locals 1
    .param p1, "source"    # Lzipkin2/v1/V1Span;
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
    .local v0, "out":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V

    .line 42
    return-object v0
.end method

.method public convert(Lzipkin2/v1/V1Span;Ljava/util/Collection;)V
    .locals 0
    .param p1, "source"    # Lzipkin2/v1/V1Span;
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
    .local p2, "sink":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->start(Lzipkin2/v1/V1Span;)V

    .line 48
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->processAnnotations(Lzipkin2/v1/V1Span;)V

    .line 50
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->processBinaryAnnotations(Lzipkin2/v1/V1Span;)V

    .line 51
    invoke-virtual {p0, p2}, Lzipkin2/v1/V1SpanConverter;->finish(Ljava/util/Collection;)V

    .line 52
    return-void
.end method

.method finish(Ljava/util/Collection;)V
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
    .local p1, "sink":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 303
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span$Builder;

    invoke-virtual {v2}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    return-void
.end method

.method forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;
    .locals 4
    .param p1, "source"    # Lzipkin2/v1/V1Span;
    .param p2, "e"    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 276
    if-nez p2, :cond_0

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    invoke-static {v0, p2}, Lzipkin2/v1/V1SpanConverter;->closeEnoughEndpoint(Lzipkin2/Span$Builder;Lzipkin2/Endpoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    return-object v0

    .line 278
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 279
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span$Builder;

    .line 280
    .local v2, "next":Lzipkin2/Span$Builder;
    invoke-static {v2, p2}, Lzipkin2/v1/V1SpanConverter;->closeEnoughEndpoint(Lzipkin2/Span$Builder;Lzipkin2/Endpoint;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 278
    .end local v2    # "next":Lzipkin2/Span$Builder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_3
    invoke-virtual {p0, p1, p2}, Lzipkin2/v1/V1SpanConverter;->newSpanBuilder(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    return-object v0
.end method

.method handleIncompleteRpc(Lzipkin2/Span$Builder;)V
    .locals 3
    .param p1, "next"    # Lzipkin2/Span$Builder;

    .line 189
    sget-object v0, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {p1}, Lzipkin2/Span$Builder;->kind()Lzipkin2/Span$Kind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->timestamp:J

    invoke-virtual {p1, v0, v1}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 191
    :cond_0
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

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
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->timestamp:J

    invoke-virtual {p1, v0, v1}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 194
    :cond_2
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    iget-wide v0, v0, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    .line 196
    :cond_3
    :goto_0
    return-void
.end method

.method handleIncompleteRpc(Lzipkin2/v1/V1Span;)V
    .locals 4
    .param p1, "source"    # Lzipkin2/v1/V1Span;

    .line 179
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    invoke-virtual {p0, v0}, Lzipkin2/v1/V1SpanConverter;->handleIncompleteRpc(Lzipkin2/Span$Builder;)V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 181
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span$Builder;

    invoke-virtual {p0, v2}, Lzipkin2/v1/V1SpanConverter;->handleIncompleteRpc(Lzipkin2/Span$Builder;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->duration:J

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    .line 186
    :cond_1
    return-void
.end method

.method maybeTimestampDuration(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V
    .locals 5
    .param p1, "source"    # Lzipkin2/v1/V1Span;
    .param p2, "begin"    # Lzipkin2/v1/V1Annotation;
    .param p3, "end"    # Lzipkin2/v1/V1Annotation;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 206
    iget-object v0, p2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 207
    .local v0, "span2":Lzipkin2/Span$Builder;
    iget-wide v1, p1, Lzipkin2/v1/V1Span;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p1, Lzipkin2/v1/V1Span;->duration:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 208
    iget-wide v1, p1, Lzipkin2/v1/V1Span;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object v1

    iget-wide v2, p1, Lzipkin2/v1/V1Span;->duration:J

    invoke-virtual {v1, v2, v3}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    goto :goto_0

    .line 210
    :cond_0
    iget-wide v1, p2, Lzipkin2/v1/V1Annotation;->timestamp:J

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 211
    if-eqz p3, :cond_1

    iget-wide v1, p3, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-wide v3, p2, Lzipkin2/v1/V1Annotation;->timestamp:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    .line 213
    :cond_1
    :goto_0
    return-void
.end method

.method newSpanBuilder(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;
    .locals 2
    .param p1, "source"    # Lzipkin2/v1/V1Span;
    .param p2, "e"    # Lzipkin2/Endpoint;

    .line 295
    invoke-static {}, Lzipkin2/Span;->newBuilder()Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->newBuilder(Lzipkin2/Span$Builder;Lzipkin2/v1/V1Span;)Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lzipkin2/Span$Builder;->localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 296
    .local v0, "result":Lzipkin2/Span$Builder;
    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-object v0
.end method

.method processAnnotations(Lzipkin2/v1/V1Span;)V
    .locals 10
    .param p1, "source"    # Lzipkin2/v1/V1Span;

    .line 62
    const/4 v0, 0x0

    .line 62
    .local v0, "i":I
    iget-object v1, p1, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 62
    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_9

    .line 63
    iget-object v2, p1, Lzipkin2/v1/V1Span;->annotations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/v1/V1Annotation;

    .line 64
    .local v2, "a":Lzipkin2/v1/V1Annotation;
    iget-object v3, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v3}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v3

    .line 66
    .local v3, "currentSpan":Lzipkin2/Span$Builder;
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    if-eqz v4, :cond_8

    .line 67
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string v5, "cs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    sget-object v4, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v3, v4}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 69
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    goto/16 :goto_1

    .line 70
    :cond_0
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string v5, "sr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    sget-object v4, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {v3, v4}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 72
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    goto/16 :goto_1

    .line 73
    :cond_1
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string v5, "ss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    sget-object v4, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {v3, v4}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 75
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 76
    :cond_2
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string v5, "cr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    sget-object v4, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v3, v4}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 78
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 79
    :cond_3
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 80
    sget-object v4, Lzipkin2/Span$Kind;->PRODUCER:Lzipkin2/Span$Kind;

    invoke-virtual {v3, v4}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 81
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 82
    :cond_4
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string v5, "mr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 83
    sget-object v4, Lzipkin2/Span$Kind;->CONSUMER:Lzipkin2/Span$Kind;

    invoke-virtual {v3, v4}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 84
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 85
    :cond_5
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string/jumbo v5, "ws"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 87
    :cond_6
    iget-object v4, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    const-string/jumbo v5, "wr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 88
    iput-object v2, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    goto :goto_1

    .line 90
    :cond_7
    iget-wide v4, v2, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v6, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    goto :goto_1

    .line 93
    :cond_8
    iget-wide v4, v2, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v6, v2, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    .line 62
    .end local v2    # "a":Lzipkin2/v1/V1Annotation;
    .end local v3    # "currentSpan":Lzipkin2/Span$Builder;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 98
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_9
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_a

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->endTimestampReflectsSpanDuration(Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Span;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 99
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->timestamp:J

    const-string v2, "cs"

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-static {v0, v1, v2, v3}, Lzipkin2/v1/V1Annotation;->create(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Annotation;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    .line 101
    :cond_a
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_b

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->endTimestampReflectsSpanDuration(Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Span;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    iget-wide v0, p1, Lzipkin2/v1/V1Span;->timestamp:J

    const-string v2, "sr"

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-static {v0, v1, v2, v3}, Lzipkin2/v1/V1Annotation;->create(JLjava/lang/String;Lzipkin2/Endpoint;)Lzipkin2/v1/V1Annotation;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    .line 105
    :cond_b
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_f

    .line 107
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v5}, Lzipkin2/v1/V1SpanConverter;->maybeTimestampDuration(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    .line 110
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 112
    .local v0, "client":Lzipkin2/Span$Builder;
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    iget-object v5, v5, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    iget-object v6, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-object v6, v6, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-static {v5, v6}, Lzipkin2/v1/V1SpanConverter;->hasSameServiceName(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 113
    sget-object v5, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v0, v5}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 115
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-object v5, v5, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v5}, Lzipkin2/v1/V1SpanConverter;->newSpanBuilder(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v5

    sget-object v6, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v6}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    move-result-object v5

    .line 115
    .local v5, "server":Lzipkin2/Span$Builder;
    goto :goto_2

    .line 117
    .end local v5    # "server":Lzipkin2/Span$Builder;
    :cond_c
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-object v5, v5, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v5}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v5

    .line 121
    .restart local v5    # "server":Lzipkin2/Span$Builder;
    :goto_2
    invoke-virtual {v5, v4}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    move-result-object v6

    iget-object v7, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-wide v7, v7, Lzipkin2/v1/V1Annotation;->timestamp:J

    invoke-virtual {v6, v7, v8}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 122
    iget-object v6, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    iget-wide v6, v6, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v8, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-wide v8, v8, Lzipkin2/v1/V1Annotation;->timestamp:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    .line 123
    :cond_d
    iget-object v6, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    if-nez v6, :cond_e

    iget-wide v6, p1, Lzipkin2/v1/V1Span;->duration:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_e

    invoke-virtual {v0, v1}, Lzipkin2/Span$Builder;->duration(Ljava/lang/Long;)Lzipkin2/Span$Builder;

    .line 124
    .end local v0    # "client":Lzipkin2/Span$Builder;
    .end local v5    # "server":Lzipkin2/Span$Builder;
    :cond_e
    goto :goto_3

    :cond_f
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_10

    .line 125
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v5}, Lzipkin2/v1/V1SpanConverter;->maybeTimestampDuration(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_3

    .line 126
    :cond_10
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_11

    .line 127
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v5}, Lzipkin2/v1/V1SpanConverter;->maybeTimestampDuration(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_3

    .line 129
    :cond_11
    invoke-virtual {p0, p1}, Lzipkin2/v1/V1SpanConverter;->handleIncompleteRpc(Lzipkin2/v1/V1Span;)V

    .line 134
    :goto_3
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    if-nez v0, :cond_13

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_13

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->timestamp:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_12

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_13

    iget-wide v5, p1, Lzipkin2/v1/V1Span;->duration:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_13

    .line 140
    :cond_12
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    .line 144
    :cond_13
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_17

    .line 146
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    .line 148
    .local v0, "producer":Lzipkin2/Span$Builder;
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-static {v2, v3}, Lzipkin2/v1/V1SpanConverter;->hasSameServiceName(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 149
    sget-object v2, Lzipkin2/Span$Kind;->PRODUCER:Lzipkin2/Span$Kind;

    invoke-virtual {v0, v2}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    .line 151
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v2}, Lzipkin2/v1/V1SpanConverter;->newSpanBuilder(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v2

    sget-object v3, Lzipkin2/Span$Kind;->CONSUMER:Lzipkin2/Span$Kind;

    invoke-virtual {v2, v3}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    move-result-object v2

    .line 151
    .local v2, "consumer":Lzipkin2/Span$Builder;
    goto :goto_4

    .line 153
    .end local v2    # "consumer":Lzipkin2/Span$Builder;
    :cond_14
    iget-object v2, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    iget-object v2, v2, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v2}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v2

    .line 156
    .restart local v2    # "consumer":Lzipkin2/Span$Builder;
    :goto_4
    invoke-virtual {v2, v4}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    .line 157
    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    if-eqz v3, :cond_15

    .line 158
    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    iget-wide v3, v3, Lzipkin2/v1/V1Annotation;->timestamp:J

    invoke-virtual {v2, v3, v4}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object v3

    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    iget-wide v4, v4, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v6, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    iget-wide v6, v6, Lzipkin2/v1/V1Annotation;->timestamp:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lzipkin2/Span$Builder;->duration(J)Lzipkin2/Span$Builder;

    goto :goto_5

    .line 160
    :cond_15
    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    iget-wide v3, v3, Lzipkin2/v1/V1Annotation;->timestamp:J

    invoke-virtual {v2, v3, v4}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    .line 163
    :goto_5
    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    iget-wide v3, v3, Lzipkin2/v1/V1Annotation;->timestamp:J

    invoke-virtual {v0, v3, v4}, Lzipkin2/Span$Builder;->timestamp(J)Lzipkin2/Span$Builder;

    move-result-object v3

    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    if-eqz v4, :cond_16

    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    iget-wide v4, v1, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    iget-wide v6, v1, Lzipkin2/v1/V1Annotation;->timestamp:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    :cond_16
    invoke-virtual {v3, v1}, Lzipkin2/Span$Builder;->duration(Ljava/lang/Long;)Lzipkin2/Span$Builder;

    .line 164
    .end local v0    # "producer":Lzipkin2/Span$Builder;
    .end local v2    # "consumer":Lzipkin2/Span$Builder;
    goto :goto_6

    :cond_17
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_18

    .line 165
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v1}, Lzipkin2/v1/V1SpanConverter;->maybeTimestampDuration(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_6

    .line 166
    :cond_18
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_1a

    .line 167
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_19

    .line 168
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v1}, Lzipkin2/v1/V1SpanConverter;->maybeTimestampDuration(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_6

    .line 170
    :cond_19
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    invoke-virtual {p0, p1, v0, v1}, Lzipkin2/v1/V1SpanConverter;->maybeTimestampDuration(Lzipkin2/v1/V1Span;Lzipkin2/v1/V1Annotation;Lzipkin2/v1/V1Annotation;)V

    goto :goto_6

    .line 173
    :cond_1a
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    iget-wide v1, v1, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    .line 174
    :cond_1b
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    iget-object v0, v0, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    iget-wide v1, v1, Lzipkin2/v1/V1Annotation;->timestamp:J

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    iget-object v3, v3, Lzipkin2/v1/V1Annotation;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lzipkin2/Span$Builder;->addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;

    .line 176
    :cond_1c
    :goto_6
    return-void
.end method

.method processBinaryAnnotations(Lzipkin2/v1/V1Span;)V
    .locals 9
    .param p1, "source"    # Lzipkin2/v1/V1Span;

    .line 216
    const/4 v0, 0x0

    .local v0, "ca":Lzipkin2/Endpoint;
    const/4 v1, 0x0

    .local v1, "sa":Lzipkin2/Endpoint;
    const/4 v2, 0x0

    .line 217
    .local v2, "ma":Lzipkin2/Endpoint;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p1, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "length":I
    :goto_0
    if-ge v3, v4, :cond_5

    .line 218
    iget-object v5, p1, Lzipkin2/v1/V1Span;->binaryAnnotations:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/v1/V1BinaryAnnotation;

    .line 219
    .local v5, "b":Lzipkin2/v1/V1BinaryAnnotation;
    iget-object v6, v5, Lzipkin2/v1/V1BinaryAnnotation;->stringValue:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 220
    const-string v6, "ca"

    iget-object v7, v5, Lzipkin2/v1/V1BinaryAnnotation;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    iget-object v0, v5, Lzipkin2/v1/V1BinaryAnnotation;->endpoint:Lzipkin2/Endpoint;

    goto :goto_1

    .line 222
    :cond_0
    const-string v6, "sa"

    iget-object v7, v5, Lzipkin2/v1/V1BinaryAnnotation;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    iget-object v1, v5, Lzipkin2/v1/V1BinaryAnnotation;->endpoint:Lzipkin2/Endpoint;

    goto :goto_1

    .line 224
    :cond_1
    const-string v6, "ma"

    iget-object v7, v5, Lzipkin2/v1/V1BinaryAnnotation;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 225
    iget-object v2, v5, Lzipkin2/v1/V1BinaryAnnotation;->endpoint:Lzipkin2/Endpoint;

    goto :goto_1

    .line 230
    :cond_2
    iget-object v6, v5, Lzipkin2/v1/V1BinaryAnnotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v6}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v6

    .line 233
    .local v6, "currentSpan":Lzipkin2/Span$Builder;
    const-string v7, "lc"

    iget-object v8, v5, Lzipkin2/v1/V1BinaryAnnotation;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v5, Lzipkin2/v1/V1BinaryAnnotation;->stringValue:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .end local v5    # "b":Lzipkin2/v1/V1BinaryAnnotation;
    .end local v6    # "currentSpan":Lzipkin2/Span$Builder;
    goto :goto_1

    .line 234
    .restart local v5    # "b":Lzipkin2/v1/V1BinaryAnnotation;
    .restart local v6    # "currentSpan":Lzipkin2/Span$Builder;
    :cond_3
    iget-object v7, v5, Lzipkin2/v1/V1BinaryAnnotation;->key:Ljava/lang/String;

    iget-object v8, v5, Lzipkin2/v1/V1BinaryAnnotation;->stringValue:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lzipkin2/Span$Builder;->putTag(Ljava/lang/String;Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 217
    .end local v5    # "b":Lzipkin2/v1/V1BinaryAnnotation;
    .end local v6    # "currentSpan":Lzipkin2/Span$Builder;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_5
    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    if-nez v3, :cond_6

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    if-nez v3, :cond_6

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    if-nez v3, :cond_6

    iget-object v3, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 239
    .local v3, "noCoreAnnotations":Z
    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_a

    if-nez v0, :cond_7

    if-eqz v1, :cond_a

    .line 240
    :cond_7
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 241
    invoke-virtual {p0, p1, v0}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_3

    .line 242
    :cond_8
    if-eqz v1, :cond_9

    .line 244
    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_3

    .line 246
    :cond_9
    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    sget-object v5, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    invoke-virtual {v4, v5}, Lzipkin2/Span$Builder;->kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 248
    :goto_3
    return-void

    .line 251
    :cond_a
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    goto :goto_4

    :cond_b
    iget-object v5, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    .line 252
    .local v5, "server":Lzipkin2/v1/V1Annotation;
    :goto_4
    if-eqz v0, :cond_d

    if-eqz v5, :cond_d

    iget-object v6, v5, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {v0, v6}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 255
    iget-object v6, v5, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-static {v0, v6}, Lzipkin2/v1/V1SpanConverter;->hasSameServiceName(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 256
    invoke-virtual {v0}, Lzipkin2/Endpoint;->toBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    .line 258
    :cond_c
    iget-object v4, v5, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 260
    :cond_d
    if-eqz v1, :cond_f

    .line 261
    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    if-eqz v4, :cond_e

    .line 262
    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    iget-object v4, v4, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    goto :goto_5

    .line 263
    :cond_e
    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    if-eqz v4, :cond_f

    .line 264
    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    iget-object v4, v4, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 267
    :cond_f
    :goto_5
    if-eqz v2, :cond_11

    .line 270
    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    iget-object v4, v4, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 271
    :cond_10
    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    iget-object v4, v4, Lzipkin2/v1/V1Annotation;->endpoint:Lzipkin2/Endpoint;

    invoke-virtual {p0, p1, v4}, Lzipkin2/v1/V1SpanConverter;->forEndpoint(Lzipkin2/v1/V1Span;Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lzipkin2/Span$Builder;->remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;

    .line 273
    :cond_11
    return-void
.end method

.method start(Lzipkin2/v1/V1Span;)V
    .locals 1
    .param p1, "source"    # Lzipkin2/v1/V1Span;

    .line 55
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    invoke-virtual {v0}, Lzipkin2/Span$Builder;->clear()Lzipkin2/Span$Builder;

    .line 56
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->spans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->wr:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ws:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->mr:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ms:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cr:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->ss:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->sr:Lzipkin2/v1/V1Annotation;

    iput-object v0, p0, Lzipkin2/v1/V1SpanConverter;->cs:Lzipkin2/v1/V1Annotation;

    .line 58
    iget-object v0, p0, Lzipkin2/v1/V1SpanConverter;->first:Lzipkin2/Span$Builder;

    invoke-static {v0, p1}, Lzipkin2/v1/V1SpanConverter;->newBuilder(Lzipkin2/Span$Builder;Lzipkin2/v1/V1Span;)Lzipkin2/Span$Builder;

    .line 59
    return-void
.end method

.class public final Lzipkin2/Span$Builder;
.super Ljava/lang/Object;
.source "Span.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzipkin2/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field duration:J

.field flags:I

.field id:Ljava/lang/String;

.field kind:Lzipkin2/Span$Kind;

.field localEndpoint:Lzipkin2/Endpoint;

.field name:Ljava/lang/String;

.field parentId:Ljava/lang/String;

.field remoteEndpoint:Lzipkin2/Endpoint;

.field tags:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field timestamp:J

.field traceId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 629
    return-void
.end method

.method constructor <init>(Lzipkin2/Span;)V
    .locals 2
    .param p1, "source"    # Lzipkin2/Span;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 333
    iget-object v0, p1, Lzipkin2/Span;->traceId:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    .line 334
    iget-object v0, p1, Lzipkin2/Span;->parentId:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 335
    iget-object v0, p1, Lzipkin2/Span;->id:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    .line 336
    iget-object v0, p1, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    iput-object v0, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    .line 337
    iget-object v0, p1, Lzipkin2/Span;->name:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    .line 338
    iget-wide v0, p1, Lzipkin2/Span;->timestamp:J

    iput-wide v0, p0, Lzipkin2/Span$Builder;->timestamp:J

    .line 339
    iget-wide v0, p1, Lzipkin2/Span;->duration:J

    iput-wide v0, p0, Lzipkin2/Span$Builder;->duration:J

    .line 340
    iget-object v0, p1, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    iput-object v0, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    .line 341
    iget-object v0, p1, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    iput-object v0, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    .line 342
    iget-object v0, p1, Lzipkin2/Span;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lzipkin2/Span;->annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    .line 344
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    iget-object v1, p1, Lzipkin2/Span;->annotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 346
    :cond_0
    iget-object v0, p1, Lzipkin2/Span;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    .line 348
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    iget-object v1, p1, Lzipkin2/Span;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 350
    :cond_1
    iget v0, p1, Lzipkin2/Span;->flags:I

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 351
    return-void
.end method


# virtual methods
.method public addAnnotation(JLjava/lang/String;)Lzipkin2/Span$Builder;
    .locals 2
    .param p1, "timestamp"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    .line 542
    :cond_0
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lzipkin2/Annotation;->create(JLjava/lang/String;)Lzipkin2/Annotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    return-object p0
.end method

.method public build()Lzipkin2/Span;
    .locals 9

    .line 606
    const-string v0, ""

    .line 607
    .local v0, "missing":Ljava/lang/String;
    iget-object v1, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " traceId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_0
    iget-object v1, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 610
    iget-object v1, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_3

    .line 611
    const-class v1, Lzipkin2/Span;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 612
    .local v1, "logger":Ljava/util/logging/Logger;
    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 613
    const-string v6, "undoing circular dependency: traceId=%s, spanId=%s"

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 615
    :cond_2
    iput-object v2, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 618
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_3
    iget v1, p0, Lzipkin2/Span$Builder;->flags:I

    const/16 v6, 0x8

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    sget-object v6, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    if-ne v1, v6, :cond_5

    .line 619
    const-class v1, Lzipkin2/Span;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 620
    .restart local v1    # "logger":Ljava/util/logging/Logger;
    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 621
    const-string v6, "removing shared flag on client: traceId=%s, spanId=%s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    aput-object v7, v5, v4

    iget-object v4, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    aput-object v4, v5, v3

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 623
    :cond_4
    invoke-virtual {p0, v2}, Lzipkin2/Span$Builder;->shared(Ljava/lang/Boolean;)Lzipkin2/Span$Builder;

    .line 625
    .end local v1    # "logger":Ljava/util/logging/Logger;
    :cond_5
    new-instance v1, Lzipkin2/Span;

    invoke-direct {v1, p0}, Lzipkin2/Span;-><init>(Lzipkin2/Span$Builder;)V

    return-object v1

    .line 609
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()Lzipkin2/Span$Builder;
    .locals 3

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    .line 297
    iput-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    .line 300
    iput-object v0, p0, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    .line 301
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lzipkin2/Span$Builder;->timestamp:J

    .line 302
    iput-wide v1, p0, Lzipkin2/Span$Builder;->duration:J

    .line 303
    iput-object v0, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    .line 304
    iput-object v0, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    .line 305
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    :cond_0
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 307
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 308
    return-object p0
.end method

.method public clearAnnotations()Lzipkin2/Span$Builder;
    .locals 1

    .line 548
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 549
    :cond_0
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 550
    return-object p0
.end method

.method public clearTags()Lzipkin2/Span$Builder;
    .locals 1

    .line 564
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    return-object p0

    .line 565
    :cond_0
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 566
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lzipkin2/Span$Builder;->clone()Lzipkin2/Span$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lzipkin2/Span$Builder;
    .locals 3

    .line 312
    new-instance v0, Lzipkin2/Span$Builder;

    invoke-direct {v0}, Lzipkin2/Span$Builder;-><init>()V

    .line 313
    .local v0, "result":Lzipkin2/Span$Builder;
    iget-object v1, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    iput-object v1, v0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    iput-object v1, v0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 315
    iget-object v1, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    iput-object v1, v0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    iput-object v1, v0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    .line 317
    iget-object v1, p0, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    iput-object v1, v0, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    .line 318
    iget-wide v1, p0, Lzipkin2/Span$Builder;->timestamp:J

    iput-wide v1, v0, Lzipkin2/Span$Builder;->timestamp:J

    .line 319
    iget-wide v1, p0, Lzipkin2/Span$Builder;->duration:J

    iput-wide v1, v0, Lzipkin2/Span$Builder;->duration:J

    .line 320
    iget-object v1, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    iput-object v1, v0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    .line 321
    iget-object v1, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    iput-object v1, v0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    .line 322
    iget-object v1, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    .line 325
    :cond_0
    iget-object v1, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    .line 328
    :cond_1
    iget v1, p0, Lzipkin2/Span$Builder;->flags:I

    iput v1, v0, Lzipkin2/Span$Builder;->flags:I

    .line 329
    return-object v0
.end method

.method public debug(Ljava/lang/Boolean;)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "debug"    # Ljava/lang/Boolean;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 582
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lzipkin2/Span$Builder;->debug(Z)Lzipkin2/Span$Builder;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    and-int/lit8 v0, v0, -0x7

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 584
    return-object p0
.end method

.method public debug(Z)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "debug"    # Z

    .line 571
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    goto :goto_0

    .line 575
    :cond_0
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 577
    :goto_0
    return-object p0
.end method

.method public duration(J)Lzipkin2/Span$Builder;
    .locals 2
    .param p1, "duration"    # J

    .line 513
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 514
    :cond_0
    iput-wide p1, p0, Lzipkin2/Span$Builder;->duration:J

    .line 515
    return-object p0
.end method

.method public duration(Ljava/lang/Long;)Lzipkin2/Span$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 520
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 521
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/Span$Builder;->duration:J

    .line 522
    return-object p0
.end method

.method public id(J)Lzipkin2/Span$Builder;
    .locals 2
    .param p1, "id"    # J

    .line 464
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 465
    invoke-static {p1, p2}, Lzipkin2/Span;->toLowerHex(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    .line 466
    return-object p0

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public id(Ljava/lang/String;)Lzipkin2/Span$Builder;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 474
    if-eqz p1, :cond_4

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 476
    .local v0, "length":I
    if-eqz v0, :cond_3

    .line 477
    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    .line 478
    invoke-static {p1}, Lzipkin2/Span;->validateHexAndReturnZeroPrefix(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 481
    if-ge v0, v1, :cond_0

    invoke-static {p1, v1}, Lzipkin2/Span;->padLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    .line 482
    return-object p0

    .line 479
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id is all zeros"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id.length > 16"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    .end local v0    # "length":I
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public kind(Lzipkin2/Span$Kind;)Lzipkin2/Span$Builder;
    .locals 0
    .param p1, "kind"    # Lzipkin2/Span$Kind;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 487
    iput-object p1, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    .line 488
    return-object p0
.end method

.method public kind()Lzipkin2/Span$Kind;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 390
    iget-object v0, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    return-object v0
.end method

.method public localEndpoint()Lzipkin2/Endpoint;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 394
    iget-object v0, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    return-object v0
.end method

.method public localEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "localEndpoint"    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 527
    sget-object v0, Lzipkin2/Span;->EMPTY_ENDPOINT:Lzipkin2/Endpoint;

    invoke-virtual {v0, p1}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 528
    :cond_0
    iput-object p1, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    .line 529
    return-object p0
.end method

.method public merge(Lzipkin2/Span;)Lzipkin2/Span$Builder;
    .locals 4
    .param p1, "source"    # Lzipkin2/Span;

    .line 358
    iget-object v0, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lzipkin2/Span;->traceId:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    .line 359
    :cond_0
    iget-object v0, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lzipkin2/Span;->id:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->id:Ljava/lang/String;

    .line 360
    :cond_1
    iget-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lzipkin2/Span;->parentId:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 361
    :cond_2
    iget-object v0, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    if-nez v0, :cond_3

    iget-object v0, p1, Lzipkin2/Span;->kind:Lzipkin2/Span$Kind;

    iput-object v0, p0, Lzipkin2/Span$Builder;->kind:Lzipkin2/Span$Kind;

    .line 362
    :cond_3
    iget-object v0, p0, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lzipkin2/Span;->name:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    .line 363
    :cond_4
    iget-wide v0, p0, Lzipkin2/Span$Builder;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-wide v0, p1, Lzipkin2/Span;->timestamp:J

    iput-wide v0, p0, Lzipkin2/Span$Builder;->timestamp:J

    .line 364
    :cond_5
    iget-wide v0, p0, Lzipkin2/Span$Builder;->duration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    iget-wide v0, p1, Lzipkin2/Span;->duration:J

    iput-wide v0, p0, Lzipkin2/Span$Builder;->duration:J

    .line 365
    :cond_6
    iget-object v0, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    if-nez v0, :cond_7

    .line 366
    iget-object v0, p1, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    iput-object v0, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    goto :goto_0

    .line 367
    :cond_7
    iget-object v0, p1, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    if-eqz v0, :cond_8

    .line 368
    iget-object v0, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    invoke-virtual {v0}, Lzipkin2/Endpoint;->toBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    iget-object v1, p1, Lzipkin2/Span;->localEndpoint:Lzipkin2/Endpoint;

    invoke-virtual {v0, v1}, Lzipkin2/Endpoint$Builder;->merge(Lzipkin2/Endpoint;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Span$Builder;->localEndpoint:Lzipkin2/Endpoint;

    .line 370
    :cond_8
    :goto_0
    iget-object v0, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    if-nez v0, :cond_9

    .line 371
    iget-object v0, p1, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    iput-object v0, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    goto :goto_1

    .line 372
    :cond_9
    iget-object v0, p1, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    if-eqz v0, :cond_a

    .line 373
    iget-object v0, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    invoke-virtual {v0}, Lzipkin2/Endpoint;->toBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    iget-object v1, p1, Lzipkin2/Span;->remoteEndpoint:Lzipkin2/Endpoint;

    invoke-virtual {v0, v1}, Lzipkin2/Endpoint$Builder;->merge(Lzipkin2/Endpoint;)Lzipkin2/Endpoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    .line 375
    :cond_a
    :goto_1
    iget-object v0, p1, Lzipkin2/Span;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 376
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lzipkin2/Span;->annotations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    .line 379
    :cond_b
    iget-object v0, p0, Lzipkin2/Span$Builder;->annotations:Ljava/util/ArrayList;

    iget-object v1, p1, Lzipkin2/Span;->annotations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 381
    :cond_c
    iget-object v0, p1, Lzipkin2/Span;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 382
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    .line 383
    :cond_d
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    iget-object v1, p1, Lzipkin2/Span;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 385
    :cond_e
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    iget v1, p1, Lzipkin2/Span;->flags:I

    or-int/2addr v0, v1

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 386
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 493
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lzipkin2/Span$Builder;->name:Ljava/lang/String;

    .line 494
    return-object p0
.end method

.method public parentId(J)Lzipkin2/Span$Builder;
    .locals 2
    .param p1, "parentId"    # J

    .line 433
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lzipkin2/Span;->toLowerHex(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 434
    return-object p0
.end method

.method public parentId(Ljava/lang/String;)Lzipkin2/Span$Builder;
    .locals 4
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 442
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 443
    iput-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 444
    return-object p0

    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 447
    .local v1, "length":I
    if-eqz v1, :cond_4

    .line 448
    const/16 v2, 0x10

    if-gt v1, v2, :cond_3

    .line 449
    invoke-static {p1}, Lzipkin2/Span;->validateHexAndReturnZeroPrefix(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 450
    iput-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    goto :goto_1

    .line 452
    :cond_1
    if-ge v1, v2, :cond_2

    invoke-static {p1, v2}, Lzipkin2/Span;->padLeft(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lzipkin2/Span$Builder;->parentId:Ljava/lang/String;

    .line 454
    :goto_1
    return-object p0

    .line 448
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "parentId.length > 16"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "parentId is empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putTag(Ljava/lang/String;Ljava/lang/String;)Lzipkin2/Span$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    .line 556
    :cond_0
    if-eqz p1, :cond_2

    .line 557
    if-eqz p2, :cond_1

    .line 558
    iget-object v0, p0, Lzipkin2/Span$Builder;->tags:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-object p0

    .line 557
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remoteEndpoint(Lzipkin2/Endpoint;)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "remoteEndpoint"    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 534
    sget-object v0, Lzipkin2/Span;->EMPTY_ENDPOINT:Lzipkin2/Endpoint;

    invoke-virtual {v0, p1}, Lzipkin2/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 535
    :cond_0
    iput-object p1, p0, Lzipkin2/Span$Builder;->remoteEndpoint:Lzipkin2/Endpoint;

    .line 536
    return-object p0
.end method

.method public shared(Ljava/lang/Boolean;)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "shared"    # Ljava/lang/Boolean;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 600
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    and-int/lit8 v0, v0, -0x19

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 602
    return-object p0
.end method

.method public shared(Z)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "shared"    # Z

    .line 589
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 590
    if-eqz p1, :cond_0

    .line 591
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    goto :goto_0

    .line 593
    :cond_0
    iget v0, p0, Lzipkin2/Span$Builder;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lzipkin2/Span$Builder;->flags:I

    .line 595
    :goto_0
    return-object p0
.end method

.method public timestamp(J)Lzipkin2/Span$Builder;
    .locals 2
    .param p1, "timestamp"    # J

    .line 499
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 500
    :cond_0
    iput-wide p1, p0, Lzipkin2/Span$Builder;->timestamp:J

    .line 501
    return-object p0
.end method

.method public timestamp(Ljava/lang/Long;)Lzipkin2/Span$Builder;
    .locals 4
    .param p1, "timestamp"    # Ljava/lang/Long;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 506
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 507
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/Span$Builder;->timestamp:J

    .line 508
    return-object p0
.end method

.method public traceId(JJ)Lzipkin2/Span$Builder;
    .locals 4
    .param p1, "high"    # J
    .param p3, "low"    # J

    .line 414
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty trace ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    :goto_0
    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_1

    :cond_2
    const/16 v2, 0x10

    :goto_1
    new-array v2, v2, [C

    .line 416
    .local v2, "result":[C
    const/4 v3, 0x0

    .line 417
    .local v3, "pos":I
    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 418
    invoke-static {v2, v3, p1, p2}, Lzipkin2/Span;->writeHexLong([CIJ)V

    .line 419
    add-int/lit8 v3, v3, 0x10

    .line 421
    :cond_3
    invoke-static {v2, v3, p3, p4}, Lzipkin2/Span;->writeHexLong([CIJ)V

    .line 422
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    .line 423
    return-object p0
.end method

.method public traceId(Ljava/lang/String;)Lzipkin2/Span$Builder;
    .locals 1
    .param p1, "traceId"    # Ljava/lang/String;

    .line 402
    invoke-static {p1}, Lzipkin2/Span;->normalizeTraceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Span$Builder;->traceId:Ljava/lang/String;

    .line 403
    return-object p0
.end method

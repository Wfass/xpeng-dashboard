.class public final Lzipkin2/internal/SpanNode$Builder;
.super Ljava/lang/Object;
.source "SpanNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/SpanNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field keyToNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lzipkin2/internal/SpanNode;",
            ">;"
        }
    .end annotation
.end field

.field final logger:Ljava/util/logging/Logger;

.field rootSpan:Lzipkin2/internal/SpanNode;

.field spanToParent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    .line 118
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    .line 114
    iput-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public build(Ljava/util/List;)Lzipkin2/internal/SpanNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)",
            "Lzipkin2/internal/SpanNode;"
        }
    .end annotation

    .line 134
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 135
    invoke-virtual {p0}, Lzipkin2/internal/SpanNode$Builder;->clear()V

    .line 139
    invoke-static {p1}, Lzipkin2/internal/Trace;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span;

    invoke-virtual {v2}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "building trace tree: traceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 147
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/Span;

    invoke-virtual {p0, v4}, Lzipkin2/internal/SpanNode$Builder;->index(Lzipkin2/Span;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_2

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;

    invoke-virtual {p0, v3}, Lzipkin2/internal/SpanNode$Builder;->process(Lzipkin2/Span;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_2
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    if-nez p1, :cond_4

    .line 158
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 159
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "substituting dummy node for missing root span: traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 161
    :cond_3
    new-instance p1, Lzipkin2/internal/SpanNode;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lzipkin2/internal/SpanNode;-><init>(Lzipkin2/Span;)V

    iput-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    .line 166
    :cond_4
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    iget-object v1, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzipkin2/internal/SpanNode;

    .line 168
    iget-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/internal/SpanNode;

    if-nez v0, :cond_5

    .line 171
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    invoke-virtual {v0, v1}, Lzipkin2/internal/SpanNode;->addChild(Lzipkin2/internal/SpanNode;)Lzipkin2/internal/SpanNode;

    goto :goto_2

    .line 173
    :cond_5
    invoke-virtual {v0, v1}, Lzipkin2/internal/SpanNode;->addChild(Lzipkin2/internal/SpanNode;)Lzipkin2/internal/SpanNode;

    goto :goto_2

    .line 176
    :cond_6
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    return-object p1

    .line 134
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spans were empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    .line 123
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method index(Lzipkin2/Span;)V
    .locals 3

    .line 194
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lzipkin2/internal/SpanNode;->createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object p1

    .line 204
    :goto_0
    iget-object v1, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method process(Lzipkin2/Span;)V
    .locals 9

    .line 217
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    .line 218
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 219
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lzipkin2/internal/SpanNode;->createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lzipkin2/internal/SpanNode;->createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 232
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v0}, Lzipkin2/internal/SpanNode;->createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;

    move-result-object v3

    .line 233
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 240
    :cond_3
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 244
    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    iget-object v7, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    invoke-virtual {v7}, Lzipkin2/internal/SpanNode;->span()Lzipkin2/Span;

    move-result-object v7

    invoke-virtual {v7}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "attributing span missing parent to root: traceId=%s, rootSpanId=%s, spanId=%s"

    .line 242
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 249
    :cond_4
    :goto_1
    new-instance v0, Lzipkin2/internal/SpanNode;

    invoke-direct {v0, p1}, Lzipkin2/internal/SpanNode;-><init>(Lzipkin2/Span;)V

    if-nez v3, :cond_5

    .line 252
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    if-nez p1, :cond_5

    .line 253
    iput-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    .line 254
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 258
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 261
    :cond_6
    iget-object p1, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

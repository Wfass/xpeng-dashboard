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
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

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

    .line 115
    return-void
.end method


# virtual methods
.method public build(Ljava/util/List;)Lzipkin2/internal/SpanNode;
    .locals 8
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
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 135
    invoke-virtual {p0}, Lzipkin2/internal/SpanNode$Builder;->clear()V

    .line 139
    invoke-static {p1}, Lzipkin2/internal/Trace;->merge(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "cleaned":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 141
    .local v1, "length":I
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;

    invoke-virtual {v3}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "traceId":Ljava/lang/String;
    iget-object v4, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "building trace tree: traceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 146
    :cond_0
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 147
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Span;

    invoke-virtual {p0, v5}, Lzipkin2/internal/SpanNode$Builder;->index(Lzipkin2/Span;)V

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "i":I
    :cond_1
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 153
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/Span;

    invoke-virtual {p0, v4}, Lzipkin2/internal/SpanNode$Builder;->process(Lzipkin2/Span;)V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    if-nez v2, :cond_4

    .line 158
    iget-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    iget-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "substituting dummy node for missing root span: traceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 161
    :cond_3
    new-instance v2, Lzipkin2/internal/SpanNode;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lzipkin2/internal/SpanNode;-><init>(Lzipkin2/Span;)V

    iput-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    .line 166
    :cond_4
    iget-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 167
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v5, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/internal/SpanNode;

    .line 168
    .local v5, "child":Lzipkin2/internal/SpanNode;
    iget-object v6, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/internal/SpanNode;

    .line 170
    .local v6, "parent":Lzipkin2/internal/SpanNode;
    if-nez v6, :cond_5

    .line 171
    iget-object v7, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    invoke-virtual {v7, v5}, Lzipkin2/internal/SpanNode;->addChild(Lzipkin2/internal/SpanNode;)Lzipkin2/internal/SpanNode;

    goto :goto_3

    .line 173
    :cond_5
    invoke-virtual {v6, v5}, Lzipkin2/internal/SpanNode;->addChild(Lzipkin2/internal/SpanNode;)Lzipkin2/internal/SpanNode;

    .line 175
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "child":Lzipkin2/internal/SpanNode;
    .end local v6    # "parent":Lzipkin2/internal/SpanNode;
    :goto_3
    goto :goto_2

    .line 176
    :cond_6
    iget-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    return-object v2

    .line 134
    .end local v0    # "cleaned":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    .end local v1    # "length":I
    .end local v3    # "traceId":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spans were empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method clear()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    .line 123
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    iget-object v0, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    return-void
.end method

.method index(Lzipkin2/Span;)V
    .locals 3
    .param p1, "span"    # Lzipkin2/Span;

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
    .local v0, "idKey":Ljava/lang/Object;
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v1

    .local v1, "parentKey":Ljava/lang/Object;
    goto :goto_0

    .line 201
    .end local v0    # "idKey":Ljava/lang/Object;
    .end local v1    # "parentKey":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0    # "idKey":Ljava/lang/Object;
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1    # "parentKey":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method process(Lzipkin2/Span;)V
    .locals 11
    .param p1, "span"    # Lzipkin2/Span;

    .line 217
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v0

    .line 218
    .local v0, "endpoint":Lzipkin2/Endpoint;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 219
    .local v1, "shared":Z
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lzipkin2/internal/SpanNode;->createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "key":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lzipkin2/internal/SpanNode;->createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 222
    .local v3, "noEndpointKey":Ljava/lang/Object;
    :goto_0
    const/4 v4, 0x0

    .line 223
    .local v4, "parent":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 232
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, v0}, Lzipkin2/internal/SpanNode;->createKey(Ljava/lang/String;ZLzipkin2/Endpoint;)Ljava/lang/Object;

    move-result-object v4

    .line 233
    iget-object v5, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    iget-object v5, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 237
    :cond_2
    invoke-virtual {p1}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 240
    :cond_3
    iget-object v5, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    if-eqz v5, :cond_4

    .line 241
    iget-object v5, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 242
    iget-object v5, p0, Lzipkin2/internal/SpanNode$Builder;->logger:Ljava/util/logging/Logger;

    const-string v7, "attributing span missing parent to root: traceId=%s, rootSpanId=%s, spanId=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 244
    invoke-virtual {p1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iget-object v9, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    invoke-virtual {v9}, Lzipkin2/internal/SpanNode;->span()Lzipkin2/Span;

    move-result-object v9

    invoke-virtual {v9}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 242
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 249
    :cond_4
    :goto_1
    new-instance v5, Lzipkin2/internal/SpanNode;

    invoke-direct {v5, p1}, Lzipkin2/internal/SpanNode;-><init>(Lzipkin2/Span;)V

    .line 252
    .local v5, "node":Lzipkin2/internal/SpanNode;
    if-nez v4, :cond_5

    iget-object v6, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    if-nez v6, :cond_5

    .line 253
    iput-object v5, p0, Lzipkin2/internal/SpanNode$Builder;->rootSpan:Lzipkin2/internal/SpanNode;

    .line 254
    iget-object v6, p0, Lzipkin2/internal/SpanNode$Builder;->spanToParent:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 255
    :cond_5
    if-eqz v1, :cond_6

    .line 258
    iget-object v6, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v6, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 261
    :cond_6
    iget-object v6, p0, Lzipkin2/internal/SpanNode$Builder;->keyToNode:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_2
    return-void
.end method

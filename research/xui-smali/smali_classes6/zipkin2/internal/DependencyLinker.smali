.class public final Lzipkin2/internal/DependencyLinker;
.super Ljava/lang/Object;
.source "DependencyLinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/DependencyLinker$Pair;
    }
.end annotation


# instance fields
.field final builder:Lzipkin2/internal/SpanNode$Builder;

.field final callCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lzipkin2/internal/DependencyLinker$Pair;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final errorCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lzipkin2/internal/DependencyLinker$Pair;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const-class v0, Lzipkin2/internal/DependencyLinker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Lzipkin2/internal/DependencyLinker;-><init>(Ljava/util/logging/Logger;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/DependencyLinker;->callCounts:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/DependencyLinker;->errorCounts:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    .line 49
    new-instance v0, Lzipkin2/internal/SpanNode$Builder;

    invoke-direct {v0, p1}, Lzipkin2/internal/SpanNode$Builder;-><init>(Ljava/util/logging/Logger;)V

    iput-object v0, p0, Lzipkin2/internal/DependencyLinker;->builder:Lzipkin2/internal/SpanNode$Builder;

    .line 50
    return-void
.end method

.method static link(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lzipkin2/internal/DependencyLinker$Pair;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Lzipkin2/internal/DependencyLinker$Pair;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation

    .line 207
    .local p0, "callCounts":Ljava/util/Map;, "Ljava/util/Map<Lzipkin2/internal/DependencyLinker$Pair;Ljava/lang/Long;>;"
    .local p1, "errorCounts":Ljava/util/Map;, "Ljava/util/Map<Lzipkin2/internal/DependencyLinker$Pair;Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lzipkin2/DependencyLink;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 209
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lzipkin2/internal/DependencyLinker$Pair;Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/internal/DependencyLinker$Pair;

    .line 210
    .local v3, "parentChild":Lzipkin2/internal/DependencyLinker$Pair;
    invoke-static {}, Lzipkin2/DependencyLink;->newBuilder()Lzipkin2/DependencyLink$Builder;

    move-result-object v4

    iget-object v5, v3, Lzipkin2/internal/DependencyLinker$Pair;->left:Ljava/lang/String;

    .line 211
    invoke-virtual {v4, v5}, Lzipkin2/DependencyLink$Builder;->parent(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;

    move-result-object v4

    iget-object v5, v3, Lzipkin2/internal/DependencyLinker$Pair;->right:Ljava/lang/String;

    .line 212
    invoke-virtual {v4, v5}, Lzipkin2/DependencyLink$Builder;->child(Ljava/lang/String;)Lzipkin2/DependencyLink$Builder;

    move-result-object v4

    .line 213
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lzipkin2/DependencyLink$Builder;->callCount(J)Lzipkin2/DependencyLink$Builder;

    move-result-object v4

    .line 214
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5, v6}, Lzipkin2/DependencyLink$Builder;->errorCount(J)Lzipkin2/DependencyLink$Builder;

    move-result-object v4

    .line 215
    invoke-virtual {v4}, Lzipkin2/DependencyLink$Builder;->build()Lzipkin2/DependencyLink;

    move-result-object v4

    .line 210
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lzipkin2/internal/DependencyLinker$Pair;Ljava/lang/Long;>;"
    .end local v3    # "parentChild":Lzipkin2/internal/DependencyLinker$Pair;
    goto :goto_0

    .line 217
    :cond_1
    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lzipkin2/DependencyLink;",
            ">;)",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation

    .line 189
    .local p0, "in":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lzipkin2/DependencyLink;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 190
    .local v0, "callCounts":Ljava/util/Map;, "Ljava/util/Map<Lzipkin2/internal/DependencyLinker$Pair;Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .local v1, "errorCounts":Ljava/util/Map;, "Ljava/util/Map<Lzipkin2/internal/DependencyLinker$Pair;Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/DependencyLink;

    .line 193
    .local v3, "link":Lzipkin2/DependencyLink;
    new-instance v4, Lzipkin2/internal/DependencyLinker$Pair;

    invoke-virtual {v3}, Lzipkin2/DependencyLink;->parent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lzipkin2/DependencyLink;->child()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lzipkin2/internal/DependencyLinker$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v4, "parentChild":Lzipkin2/internal/DependencyLinker$Pair;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_0
    move-wide v8, v6

    .line 195
    .local v8, "callCount":J
    :goto_1
    invoke-virtual {v3}, Lzipkin2/DependencyLink;->callCount()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 196
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    :cond_1
    move-wide v5, v6

    .line 198
    .local v5, "errorCount":J
    invoke-virtual {v3}, Lzipkin2/DependencyLink;->errorCount()J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 199
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v3    # "link":Lzipkin2/DependencyLink;
    .end local v4    # "parentChild":Lzipkin2/internal/DependencyLinker$Pair;
    .end local v5    # "errorCount":J
    .end local v8    # "callCount":J
    goto :goto_0

    .line 202
    :cond_2
    invoke-static {v0, v1}, Lzipkin2/internal/DependencyLinker;->link(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method addLink(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "child"    # Ljava/lang/String;
    .param p3, "isError"    # Z

    .line 166
    iget-object v0, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incrementing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v2, "error "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 169
    :cond_1
    new-instance v0, Lzipkin2/internal/DependencyLinker$Pair;

    invoke-direct {v0, p1, p2}, Lzipkin2/internal/DependencyLinker$Pair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, "key":Lzipkin2/internal/DependencyLinker$Pair;
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->callCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->callCounts:Ljava/util/Map;

    iget-object v4, p0, Lzipkin2/internal/DependencyLinker;->callCounts:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :cond_2
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->callCounts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_1
    if-nez p3, :cond_3

    return-void

    .line 176
    :cond_3
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->errorCounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->errorCounts:Ljava/util/Map;

    iget-object v4, p0, Lzipkin2/internal/DependencyLinker;->errorCounts:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 179
    :cond_4
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->errorCounts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_2
    return-void
.end method

.method firstRemoteAncestor(Lzipkin2/internal/SpanNode;)Lzipkin2/Span;
    .locals 5
    .param p1, "current"    # Lzipkin2/internal/SpanNode;

    .line 153
    invoke-virtual {p1}, Lzipkin2/internal/SpanNode;->parent()Lzipkin2/internal/SpanNode;

    move-result-object v0

    .line 154
    .local v0, "ancestor":Lzipkin2/internal/SpanNode;
    :goto_0
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Lzipkin2/internal/SpanNode;->span()Lzipkin2/Span;

    move-result-object v1

    .line 156
    .local v1, "maybeRemote":Lzipkin2/Span;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found remote ancestor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-object v1

    .line 160
    :cond_1
    invoke-virtual {v0}, Lzipkin2/internal/SpanNode;->parent()Lzipkin2/internal/SpanNode;

    move-result-object v0

    .line 161
    .end local v1    # "maybeRemote":Lzipkin2/Span;
    goto :goto_0

    .line 162
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public link()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lzipkin2/internal/DependencyLinker;->callCounts:Ljava/util/Map;

    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->errorCounts:Ljava/util/Map;

    invoke-static {v0, v1}, Lzipkin2/internal/DependencyLinker;->link(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public putTrace(Ljava/util/List;)Lzipkin2/internal/DependencyLinker;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)",
            "Lzipkin2/internal/DependencyLinker;"
        }
    .end annotation

    .line 56
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 57
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/DependencyLinker;->builder:Lzipkin2/internal/SpanNode$Builder;

    invoke-virtual {v0, p1}, Lzipkin2/internal/SpanNode$Builder;->build(Ljava/util/List;)Lzipkin2/internal/SpanNode;

    move-result-object v0

    .line 59
    .local v0, "traceTree":Lzipkin2/internal/SpanNode;
    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    const-string v2, "traversing trace tree, breadth-first"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 60
    :cond_1
    invoke-virtual {v0}, Lzipkin2/internal/SpanNode;->traverse()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzipkin2/internal/SpanNode;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/internal/SpanNode;

    .line 62
    .local v2, "current":Lzipkin2/internal/SpanNode;
    invoke-virtual {v2}, Lzipkin2/internal/SpanNode;->span()Lzipkin2/Span;

    move-result-object v3

    .line 63
    .local v3, "currentSpan":Lzipkin2/Span;
    iget-object v4, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    iget-object v4, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    :cond_2
    invoke-virtual {v3}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v4

    .line 70
    .local v4, "kind":Lzipkin2/Span$Kind;
    sget-object v5, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v5, v4}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lzipkin2/internal/SpanNode;->children()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 71
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v3}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "serviceName":Ljava/lang/String;
    invoke-virtual {v3}, Lzipkin2/Span;->remoteServiceName()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "remoteServiceName":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 78
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 79
    sget-object v4, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    goto :goto_1

    .line 81
    :cond_4
    iget-object v7, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    const-string v8, "non remote span; skipping"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 82
    goto :goto_0

    .line 88
    :cond_5
    :goto_1
    sget-object v7, Lzipkin2/internal/DependencyLinker$1;->$SwitchMap$zipkin2$Span$Kind:[I

    invoke-virtual {v4}, Lzipkin2/Span$Kind;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 106
    iget-object v7, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    const-string v8, "unknown kind; skipping"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 107
    goto :goto_0

    .line 102
    :pswitch_0
    move-object v7, v5

    .line 103
    .local v7, "parent":Ljava/lang/String;
    move-object v8, v6

    .line 104
    .local v8, "child":Ljava/lang/String;
    goto :goto_2

    .line 91
    .end local v7    # "parent":Ljava/lang/String;
    .end local v8    # "child":Ljava/lang/String;
    :pswitch_1
    move-object v8, v5

    .line 92
    .restart local v8    # "child":Ljava/lang/String;
    move-object v7, v6

    .line 93
    .restart local v7    # "parent":Ljava/lang/String;
    if-ne v2, v0, :cond_6

    .line 94
    if-nez v7, :cond_6

    .line 95
    iget-object v9, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    const-string v10, "root\'s client is unknown; skipping"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 96
    goto/16 :goto_0

    .line 107
    :cond_6
    :goto_2
    nop

    .line 110
    invoke-virtual {v3}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v9

    const-string v10, "error"

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 111
    .local v9, "isError":Z
    sget-object v10, Lzipkin2/Span$Kind;->PRODUCER:Lzipkin2/Span$Kind;

    if-eq v4, v10, :cond_e

    sget-object v10, Lzipkin2/Span$Kind;->CONSUMER:Lzipkin2/Span$Kind;

    if-ne v4, v10, :cond_7

    goto/16 :goto_4

    .line 121
    :cond_7
    invoke-virtual {p0, v2}, Lzipkin2/internal/DependencyLinker;->firstRemoteAncestor(Lzipkin2/internal/SpanNode;)Lzipkin2/Span;

    move-result-object v10

    .line 123
    .local v10, "remoteAncestor":Lzipkin2/Span;
    if-eqz v10, :cond_b

    .line 124
    invoke-virtual {v10}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .local v12, "remoteAncestorName":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 127
    sget-object v11, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    if-ne v4, v11, :cond_8

    if-eqz v5, :cond_8

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 128
    iget-object v11, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    const-string v13, "detected missing link to client span"

    invoke-virtual {v11, v13}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 129
    const/4 v11, 0x0

    invoke-virtual {p0, v12, v5, v11}, Lzipkin2/internal/DependencyLinker;->addLink(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    :cond_8
    sget-object v11, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    if-eq v4, v11, :cond_9

    if-nez v7, :cond_a

    :cond_9
    move-object v7, v12

    .line 136
    :cond_a
    if-nez v9, :cond_b

    sget-object v11, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {v10}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v13

    invoke-virtual {v11, v13}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 137
    invoke-virtual {v3}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v3}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 138
    invoke-virtual {v10}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v11

    const-string v13, "error"

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 142
    .end local v12    # "remoteAncestorName":Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_d

    if-nez v8, :cond_c

    goto :goto_3

    .line 147
    :cond_c
    invoke-virtual {p0, v7, v8, v9}, Lzipkin2/internal/DependencyLinker;->addLink(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    .end local v2    # "current":Lzipkin2/internal/SpanNode;
    .end local v3    # "currentSpan":Lzipkin2/Span;
    .end local v4    # "kind":Lzipkin2/Span$Kind;
    .end local v5    # "serviceName":Ljava/lang/String;
    .end local v6    # "remoteServiceName":Ljava/lang/String;
    .end local v7    # "parent":Ljava/lang/String;
    .end local v8    # "child":Ljava/lang/String;
    .end local v9    # "isError":Z
    .end local v10    # "remoteAncestor":Lzipkin2/Span;
    goto/16 :goto_0

    .line 143
    .restart local v2    # "current":Lzipkin2/internal/SpanNode;
    .restart local v3    # "currentSpan":Lzipkin2/Span;
    .restart local v4    # "kind":Lzipkin2/Span$Kind;
    .restart local v5    # "serviceName":Ljava/lang/String;
    .restart local v6    # "remoteServiceName":Ljava/lang/String;
    .restart local v7    # "parent":Ljava/lang/String;
    .restart local v8    # "child":Ljava/lang/String;
    .restart local v9    # "isError":Z
    .restart local v10    # "remoteAncestor":Lzipkin2/Span;
    :cond_d
    :goto_3
    iget-object v11, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    const-string v12, "cannot find remote ancestor; skipping"

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 144
    goto/16 :goto_0

    .line 112
    .end local v10    # "remoteAncestor":Lzipkin2/Span;
    :cond_e
    :goto_4
    if-eqz v7, :cond_10

    if-nez v8, :cond_f

    goto :goto_5

    .line 115
    :cond_f
    invoke-virtual {p0, v7, v8, v9}, Lzipkin2/internal/DependencyLinker;->addLink(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    goto/16 :goto_0

    .line 113
    :cond_10
    :goto_5
    iget-object v10, p0, Lzipkin2/internal/DependencyLinker;->logger:Ljava/util/logging/Logger;

    const-string v11, "cannot link messaging span to its broker; skipping"

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzipkin2/internal/SpanNode;>;"
    .end local v2    # "current":Lzipkin2/internal/SpanNode;
    .end local v3    # "currentSpan":Lzipkin2/Span;
    .end local v4    # "kind":Lzipkin2/Span$Kind;
    .end local v5    # "serviceName":Ljava/lang/String;
    .end local v6    # "remoteServiceName":Ljava/lang/String;
    .end local v7    # "parent":Ljava/lang/String;
    .end local v8    # "child":Ljava/lang/String;
    .end local v9    # "isError":Z
    :cond_11
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

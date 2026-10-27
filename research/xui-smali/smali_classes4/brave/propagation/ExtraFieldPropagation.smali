.class public final Lbrave/propagation/ExtraFieldPropagation;
.super Ljava/lang/Object;
.source "ExtraFieldPropagation.java"

# interfaces
.implements Lbrave/propagation/Propagation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/ExtraFieldPropagation$Extra;,
        Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;,
        Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;,
        Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;,
        Lbrave/propagation/ExtraFieldPropagation$Factory;,
        Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/Propagation<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final delegate:Lbrave/propagation/Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final factory:Lbrave/propagation/ExtraFieldPropagation$Factory;

.field final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/ExtraFieldPropagation$Factory;Lbrave/propagation/Propagation$KeyFactory;Ljava/util/List;)V
    .locals 1
    .param p1, "factory"    # Lbrave/propagation/ExtraFieldPropagation$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/ExtraFieldPropagation$Factory;",
            "Lbrave/propagation/Propagation$KeyFactory<",
            "TK;>;",
            "Ljava/util/List<",
            "TK;>;)V"
        }
    .end annotation

    .line 298
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation;, "Lbrave/propagation/ExtraFieldPropagation<TK;>;"
    .local p2, "keyFactory":Lbrave/propagation/Propagation$KeyFactory;, "Lbrave/propagation/Propagation$KeyFactory<TK;>;"
    .local p3, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation;->factory:Lbrave/propagation/ExtraFieldPropagation$Factory;

    .line 300
    iget-object v0, p1, Lbrave/propagation/ExtraFieldPropagation$Factory;->delegate:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v0, p2}, Lbrave/propagation/Propagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/ExtraFieldPropagation;->delegate:Lbrave/propagation/Propagation;

    .line 301
    iput-object p3, p0, Lbrave/propagation/ExtraFieldPropagation;->keys:Ljava/util/List;

    .line 302
    return-void
.end method

.method public static current(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 174
    invoke-static {p0}, Lbrave/propagation/ExtraFieldPropagation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static currentTraceContext()Lbrave/propagation/TraceContext;
    .locals 2
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 226
    invoke-static {}, Lbrave/Tracing;->current()Lbrave/Tracing;

    move-result-object v0

    .line 227
    .local v0, "tracing":Lbrave/Tracing;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbrave/Tracing;->currentTraceContext()Lbrave/propagation/CurrentTraceContext;

    move-result-object v1

    invoke-virtual {v1}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 384
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 386
    .local v0, "nextName":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 387
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 390
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 387
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "names["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] is empty"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "names["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] == null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 394
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return-object v1

    .line 384
    .end local v0    # "nextName":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "result":[Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "names is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Lbrave/propagation/TraceContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Lbrave/propagation/TraceContext;
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 232
    invoke-static {p1}, Lbrave/propagation/ExtraFieldPropagation;->lowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-static {p0, v0, v1}, Lbrave/internal/PropagationFields;->get(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 183
    invoke-static {}, Lbrave/propagation/ExtraFieldPropagation;->currentTraceContext()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 184
    .local v0, "context":Lbrave/propagation/TraceContext;
    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lbrave/propagation/ExtraFieldPropagation;->get(Lbrave/propagation/TraceContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-static {}, Lbrave/propagation/ExtraFieldPropagation;->currentTraceContext()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 205
    .local v0, "context":Lbrave/propagation/TraceContext;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 206
    :cond_0
    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->getAll(Lbrave/propagation/TraceContext;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static getAll(Lbrave/propagation/TraceContext;)Ljava/util/Map;
    .locals 2
    .param p0, "context"    # Lbrave/propagation/TraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    if-eqz p0, :cond_1

    .line 221
    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-virtual {p0, v0}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/internal/PropagationFields;

    .line 222
    .local v0, "fields":Lbrave/internal/PropagationFields;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbrave/internal/PropagationFields;->toMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1

    .line 220
    .end local v0    # "fields":Lbrave/internal/PropagationFields;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAll(Lbrave/propagation/TraceContextOrSamplingFlags;)Ljava/util/Map;
    .locals 3
    .param p0, "extracted"    # Lbrave/propagation/TraceContextOrSamplingFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContextOrSamplingFlags;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    if-eqz p0, :cond_2

    .line 212
    invoke-virtual {p0}, Lbrave/propagation/TraceContextOrSamplingFlags;->context()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 213
    .local v0, "extractedContext":Lbrave/propagation/TraceContext;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->getAll(Lbrave/propagation/TraceContext;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 214
    :cond_0
    const-class v1, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-virtual {p0}, Lbrave/propagation/TraceContextOrSamplingFlags;->extra()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbrave/internal/PropagationFields;

    .line 215
    .local v1, "fields":Lbrave/internal/PropagationFields;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lbrave/internal/PropagationFields;->toMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :goto_0
    return-object v2

    .line 211
    .end local v0    # "extractedContext":Lbrave/propagation/TraceContext;
    .end local v1    # "fields":Lbrave/internal/PropagationFields;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extracted == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static lowercase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 432
    if-eqz p0, :cond_0

    .line 433
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newFactory(Lbrave/propagation/Propagation$Factory;Ljava/util/Collection;)Lbrave/propagation/ExtraFieldPropagation$Factory;
    .locals 2
    .param p0, "delegate"    # Lbrave/propagation/Propagation$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/Propagation$Factory;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lbrave/propagation/ExtraFieldPropagation$Factory;"
        }
    .end annotation

    .line 84
    .local p1, "fieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "validated":[Ljava/lang/String;
    new-instance v1, Lbrave/propagation/ExtraFieldPropagation$Factory;

    invoke-direct {v1, p0, v0, v0}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 85
    .end local v0    # "validated":[Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fieldNames == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs newFactory(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;)Lbrave/propagation/ExtraFieldPropagation$Factory;
    .locals 2
    .param p0, "delegate"    # Lbrave/propagation/Propagation$Factory;
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .line 75
    if-eqz p0, :cond_1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->ensureLowerCase(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "validated":[Ljava/lang/String;
    new-instance v1, Lbrave/propagation/ExtraFieldPropagation$Factory;

    invoke-direct {v1, p0, v0, v0}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 76
    .end local v0    # "validated":[Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fieldNames == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newFactoryBuilder(Lbrave/propagation/Propagation$Factory;)Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
    .locals 1
    .param p0, "delegate"    # Lbrave/propagation/Propagation$Factory;

    .line 91
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;

    invoke-direct {v0, p0}, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;-><init>(Lbrave/propagation/Propagation$Factory;)V

    return-object v0
.end method

.method public static set(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Lbrave/propagation/TraceContext;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 237
    invoke-static {p1}, Lbrave/propagation/ExtraFieldPropagation;->lowercase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-static {p0, v0, p2, v1}, Lbrave/internal/PropagationFields;->put(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 238
    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 194
    invoke-static {}, Lbrave/propagation/ExtraFieldPropagation;->currentTraceContext()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 195
    .local v0, "context":Lbrave/propagation/TraceContext;
    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lbrave/propagation/ExtraFieldPropagation;->set(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public extraKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation;, "Lbrave/propagation/ExtraFieldPropagation<TK;>;"
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation;->keys:Ljava/util/List;

    return-object v0
.end method

.method public extractor(Lbrave/propagation/Propagation$Getter;)Lbrave/propagation/TraceContext$Extractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;)",
            "Lbrave/propagation/TraceContext$Extractor<",
            "TC;>;"
        }
    .end annotation

    .line 328
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation;, "Lbrave/propagation/ExtraFieldPropagation<TK;>;"
    .local p1, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;-><init>(Lbrave/propagation/ExtraFieldPropagation;Lbrave/propagation/Propagation$Getter;)V

    return-object v0
.end method

.method public injector(Lbrave/propagation/Propagation$Setter;)Lbrave/propagation/TraceContext$Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;)",
            "Lbrave/propagation/TraceContext$Injector<",
            "TC;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation;, "Lbrave/propagation/ExtraFieldPropagation<TK;>;"
    .local p1, "setter":Lbrave/propagation/Propagation$Setter;, "Lbrave/propagation/Propagation$Setter<TC;TK;>;"
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;-><init>(Lbrave/propagation/ExtraFieldPropagation;Lbrave/propagation/Propagation$Setter;)V

    return-object v0
.end method

.method public keys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation;, "Lbrave/propagation/ExtraFieldPropagation<TK;>;"
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation;->delegate:Lbrave/propagation/Propagation;

    invoke-interface {v0}, Lbrave/propagation/Propagation;->keys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

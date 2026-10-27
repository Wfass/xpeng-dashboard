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
.field final a:Lbrave/propagation/ExtraFieldPropagation$Factory;

.field final b:Lbrave/propagation/Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/ExtraFieldPropagation$Factory;Lbrave/propagation/Propagation$KeyFactory;Ljava/util/List;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation;->a:Lbrave/propagation/ExtraFieldPropagation$Factory;

    .line 300
    iget-object p1, p1, Lbrave/propagation/ExtraFieldPropagation$Factory;->a:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {p1, p2}, Lbrave/propagation/Propagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation;->b:Lbrave/propagation/Propagation;

    .line 301
    iput-object p3, p0, Lbrave/propagation/ExtraFieldPropagation;->c:Ljava/util/List;

    return-void
.end method

.method static a()Lbrave/propagation/TraceContext;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 226
    invoke-static {}, Lbrave/Tracing;->current()Lbrave/Tracing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lbrave/Tracing;->currentTraceContext()Lbrave/propagation/CurrentTraceContext;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 433
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 432
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 5
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
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 385
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 386
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 387
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "names["

    if-eqz v2, :cond_1

    .line 390
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] is empty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 389
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] == null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0

    .line 384
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "names is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static current(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 174
    invoke-static {p0}, Lbrave/propagation/ExtraFieldPropagation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lbrave/propagation/TraceContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 232
    invoke-static {p1}, Lbrave/propagation/ExtraFieldPropagation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-static {p0, p1, v0}, Lbrave/internal/PropagationFields;->get(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 183
    invoke-static {}, Lbrave/propagation/ExtraFieldPropagation;->a()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {v0, p0}, Lbrave/propagation/ExtraFieldPropagation;->get(Lbrave/propagation/TraceContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getAll()Ljava/util/Map;
    .locals 1
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
    invoke-static {}, Lbrave/propagation/ExtraFieldPropagation;->a()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->getAll(Lbrave/propagation/TraceContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getAll(Lbrave/propagation/TraceContext;)Ljava/util/Map;
    .locals 1
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

    if-eqz p0, :cond_1

    .line 221
    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-virtual {p0, v0}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbrave/internal/PropagationFields;

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Lbrave/internal/PropagationFields;->toMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0

    .line 220
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "context == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAll(Lbrave/propagation/TraceContextOrSamplingFlags;)Ljava/util/Map;
    .locals 1
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

    if-eqz p0, :cond_2

    .line 212
    invoke-virtual {p0}, Lbrave/propagation/TraceContextOrSamplingFlags;->context()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->getAll(Lbrave/propagation/TraceContext;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 214
    :cond_0
    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-virtual {p0}, Lbrave/propagation/TraceContextOrSamplingFlags;->extra()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lbrave/propagation/TraceContext;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbrave/internal/PropagationFields;

    if-eqz p0, :cond_1

    .line 215
    invoke-virtual {p0}, Lbrave/internal/PropagationFields;->toMap()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0

    .line 211
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "extracted == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newFactory(Lbrave/propagation/Propagation$Factory;Ljava/util/Collection;)Lbrave/propagation/ExtraFieldPropagation$Factory;
    .locals 1
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

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$Factory;

    invoke-direct {v0, p0, p1, p1}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fieldNames == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "delegate == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs newFactory(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;)Lbrave/propagation/ExtraFieldPropagation$Factory;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lbrave/propagation/ExtraFieldPropagation;->a(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$Factory;

    invoke-direct {v0, p0, p1, p1}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 76
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "fieldNames == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "delegate == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newFactoryBuilder(Lbrave/propagation/Propagation$Factory;)Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;
    .locals 1

    .line 91
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;

    invoke-direct {v0, p0}, Lbrave/propagation/ExtraFieldPropagation$FactoryBuilder;-><init>(Lbrave/propagation/Propagation$Factory;)V

    return-object v0
.end method

.method public static set(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 237
    invoke-static {p1}, Lbrave/propagation/ExtraFieldPropagation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-static {p0, p1, p2, v0}, Lbrave/internal/PropagationFields;->put(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 194
    invoke-static {}, Lbrave/propagation/ExtraFieldPropagation;->a()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {v0, p0, p1}, Lbrave/propagation/ExtraFieldPropagation;->set(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;)V

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
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation;->c:Ljava/util/List;

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
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation;->b:Lbrave/propagation/Propagation;

    invoke-interface {v0}, Lbrave/propagation/Propagation;->keys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.class final Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;
.super Ljava/lang/Object;
.source "ExtraFieldPropagation.java"

# interfaces
.implements Lbrave/propagation/TraceContext$Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/ExtraFieldPropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtraFieldExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/TraceContext$Extractor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final delegate:Lbrave/propagation/TraceContext$Extractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/TraceContext$Extractor<",
            "TC;>;"
        }
    .end annotation
.end field

.field final getter:Lbrave/propagation/Propagation$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;"
        }
    .end annotation
.end field

.field final propagation:Lbrave/propagation/ExtraFieldPropagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/ExtraFieldPropagation<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/ExtraFieldPropagation;Lbrave/propagation/Propagation$Getter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/ExtraFieldPropagation<",
            "TK;>;",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;)V"
        }
    .end annotation

    .line 363
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;, "Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor<TC;TK;>;"
    .local p1, "propagation":Lbrave/propagation/ExtraFieldPropagation;, "Lbrave/propagation/ExtraFieldPropagation<TK;>;"
    .local p2, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    .line 365
    iget-object v0, p1, Lbrave/propagation/ExtraFieldPropagation;->delegate:Lbrave/propagation/Propagation;

    invoke-interface {v0, p2}, Lbrave/propagation/Propagation;->extractor(Lbrave/propagation/Propagation$Getter;)Lbrave/propagation/TraceContext$Extractor;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->delegate:Lbrave/propagation/TraceContext$Extractor;

    .line 366
    iput-object p2, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->getter:Lbrave/propagation/Propagation$Getter;

    .line 367
    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lbrave/propagation/TraceContextOrSamplingFlags;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;, "Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor<TC;TK;>;"
    .local p1, "carrier":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->delegate:Lbrave/propagation/TraceContext$Extractor;

    invoke-interface {v0, p1}, Lbrave/propagation/TraceContext$Extractor;->extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    .line 373
    .local v0, "result":Lbrave/propagation/TraceContextOrSamplingFlags;
    iget-object v1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v1, v1, Lbrave/propagation/ExtraFieldPropagation;->factory:Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v1, v1, Lbrave/propagation/ExtraFieldPropagation$Factory;->extraFactory:Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;

    invoke-virtual {v1}, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->create()Lbrave/propagation/ExtraFieldPropagation$Extra;

    move-result-object v1

    .line 374
    .local v1, "fields":Lbrave/propagation/ExtraFieldPropagation$Extra;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v3, v3, Lbrave/propagation/ExtraFieldPropagation;->keys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 375
    iget-object v4, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v5, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v5, v5, Lbrave/propagation/ExtraFieldPropagation;->keys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "maybeValue":Ljava/lang/String;
    if-nez v4, :cond_0

    .end local v4    # "maybeValue":Ljava/lang/String;
    goto :goto_1

    .line 377
    .restart local v4    # "maybeValue":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v5, v5, Lbrave/propagation/ExtraFieldPropagation;->factory:Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v5, v5, Lbrave/propagation/ExtraFieldPropagation$Factory;->keyToField:[I

    aget v5, v5, v2

    invoke-virtual {v1, v5, v4}, Lbrave/propagation/ExtraFieldPropagation$Extra;->put(ILjava/lang/String;)V

    .line 374
    .end local v4    # "maybeValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    invoke-virtual {v0}, Lbrave/propagation/TraceContextOrSamplingFlags;->toBuilder()Lbrave/propagation/TraceContextOrSamplingFlags$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->addExtra(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->build()Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v2

    return-object v2
.end method

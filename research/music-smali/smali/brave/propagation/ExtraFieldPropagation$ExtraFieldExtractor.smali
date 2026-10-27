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
.field final a:Lbrave/propagation/ExtraFieldPropagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/ExtraFieldPropagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final b:Lbrave/propagation/TraceContext$Extractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/TraceContext$Extractor<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:Lbrave/propagation/Propagation$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/ExtraFieldPropagation;Lbrave/propagation/Propagation$Getter;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->a:Lbrave/propagation/ExtraFieldPropagation;

    .line 365
    iget-object p1, p1, Lbrave/propagation/ExtraFieldPropagation;->b:Lbrave/propagation/Propagation;

    invoke-interface {p1, p2}, Lbrave/propagation/Propagation;->extractor(Lbrave/propagation/Propagation$Getter;)Lbrave/propagation/TraceContext$Extractor;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->b:Lbrave/propagation/TraceContext$Extractor;

    .line 366
    iput-object p2, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->c:Lbrave/propagation/Propagation$Getter;

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
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->b:Lbrave/propagation/TraceContext$Extractor;

    invoke-interface {v0, p1}, Lbrave/propagation/TraceContext$Extractor;->extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->a:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v1, v1, Lbrave/propagation/ExtraFieldPropagation;->a:Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v1, v1, Lbrave/propagation/ExtraFieldPropagation$Factory;->e:Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;

    invoke-virtual {v1}, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->create()Lbrave/propagation/ExtraFieldPropagation$Extra;

    move-result-object v1

    .line 374
    iget-object v2, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->a:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v2, v2, Lbrave/propagation/ExtraFieldPropagation;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 375
    iget-object v4, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->c:Lbrave/propagation/Propagation$Getter;

    iget-object v5, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->a:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v5, v5, Lbrave/propagation/ExtraFieldPropagation;->c:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    iget-object v5, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldExtractor;->a:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v5, v5, Lbrave/propagation/ExtraFieldPropagation;->a:Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v5, v5, Lbrave/propagation/ExtraFieldPropagation$Factory;->d:[I

    aget v5, v5, v3

    invoke-virtual {v1, v5, v4}, Lbrave/propagation/ExtraFieldPropagation$Extra;->put(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v0}, Lbrave/propagation/TraceContextOrSamplingFlags;->toBuilder()Lbrave/propagation/TraceContextOrSamplingFlags$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->addExtra(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->build()Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    return-object p1
.end method

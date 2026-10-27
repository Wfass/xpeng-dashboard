.class final Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;
.super Ljava/lang/Object;
.source "ExtraFieldPropagation.java"

# interfaces
.implements Lbrave/propagation/TraceContext$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/ExtraFieldPropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtraFieldInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/TraceContext$Injector<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final delegate:Lbrave/propagation/TraceContext$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/TraceContext$Injector<",
            "TC;>;"
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

.field final setter:Lbrave/propagation/Propagation$Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/ExtraFieldPropagation;Lbrave/propagation/Propagation$Setter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/ExtraFieldPropagation<",
            "TK;>;",
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;)V"
        }
    .end annotation

    .line 336
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;, "Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector<TC;TK;>;"
    .local p1, "propagation":Lbrave/propagation/ExtraFieldPropagation;, "Lbrave/propagation/ExtraFieldPropagation<TK;>;"
    .local p2, "setter":Lbrave/propagation/Propagation$Setter;, "Lbrave/propagation/Propagation$Setter<TC;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    .line 338
    iget-object v0, p1, Lbrave/propagation/ExtraFieldPropagation;->delegate:Lbrave/propagation/Propagation;

    invoke-interface {v0, p2}, Lbrave/propagation/Propagation;->injector(Lbrave/propagation/Propagation$Setter;)Lbrave/propagation/TraceContext$Injector;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->delegate:Lbrave/propagation/TraceContext$Injector;

    .line 339
    iput-object p2, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->setter:Lbrave/propagation/Propagation$Setter;

    .line 340
    return-void
.end method


# virtual methods
.method inject(Lbrave/propagation/ExtraFieldPropagation$Extra;Ljava/lang/Object;)V
    .locals 5
    .param p1, "fields"    # Lbrave/propagation/ExtraFieldPropagation$Extra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/ExtraFieldPropagation$Extra;",
            "TC;)V"
        }
    .end annotation

    .line 350
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;, "Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector<TC;TK;>;"
    .local p2, "carrier":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v1, v1, Lbrave/propagation/ExtraFieldPropagation;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 351
    iget-object v2, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v2, v2, Lbrave/propagation/ExtraFieldPropagation;->factory:Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v2, v2, Lbrave/propagation/ExtraFieldPropagation$Factory;->keyToField:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lbrave/propagation/ExtraFieldPropagation$Extra;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "maybeValue":Ljava/lang/String;
    if-nez v2, :cond_0

    .end local v2    # "maybeValue":Ljava/lang/String;
    goto :goto_1

    .line 353
    .restart local v2    # "maybeValue":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->setter:Lbrave/propagation/Propagation$Setter;

    iget-object v4, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->propagation:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v4, v4, Lbrave/propagation/ExtraFieldPropagation;->keys:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p2, v4, v2}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    .end local v2    # "maybeValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    return-void
.end method

.method public inject(Lbrave/propagation/TraceContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "traceContext"    # Lbrave/propagation/TraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "TC;)V"
        }
    .end annotation

    .line 343
    .local p0, "this":Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;, "Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector<TC;TK;>;"
    .local p2, "carrier":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->delegate:Lbrave/propagation/TraceContext$Injector;

    invoke-interface {v0, p1, p2}, Lbrave/propagation/TraceContext$Injector;->inject(Lbrave/propagation/TraceContext;Ljava/lang/Object;)V

    .line 344
    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-virtual {p1, v0}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    .line 345
    .local v0, "extra":Lbrave/propagation/ExtraFieldPropagation$Extra;
    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0, v0, p2}, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->inject(Lbrave/propagation/ExtraFieldPropagation$Extra;Ljava/lang/Object;)V

    .line 347
    return-void
.end method

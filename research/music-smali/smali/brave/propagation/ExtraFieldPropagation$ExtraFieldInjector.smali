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
.field final a:Lbrave/propagation/ExtraFieldPropagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/ExtraFieldPropagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final b:Lbrave/propagation/TraceContext$Injector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/TraceContext$Injector<",
            "TC;>;"
        }
    .end annotation
.end field

.field final c:Lbrave/propagation/Propagation$Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/ExtraFieldPropagation;Lbrave/propagation/Propagation$Setter;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->a:Lbrave/propagation/ExtraFieldPropagation;

    .line 338
    iget-object p1, p1, Lbrave/propagation/ExtraFieldPropagation;->b:Lbrave/propagation/Propagation;

    invoke-interface {p1, p2}, Lbrave/propagation/Propagation;->injector(Lbrave/propagation/Propagation$Setter;)Lbrave/propagation/TraceContext$Injector;

    move-result-object p1

    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->b:Lbrave/propagation/TraceContext$Injector;

    .line 339
    iput-object p2, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->c:Lbrave/propagation/Propagation$Setter;

    return-void
.end method


# virtual methods
.method a(Lbrave/propagation/ExtraFieldPropagation$Extra;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/ExtraFieldPropagation$Extra;",
            "TC;)V"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->a:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v0, v0, Lbrave/propagation/ExtraFieldPropagation;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 351
    iget-object v2, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->a:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v2, v2, Lbrave/propagation/ExtraFieldPropagation;->a:Lbrave/propagation/ExtraFieldPropagation$Factory;

    iget-object v2, v2, Lbrave/propagation/ExtraFieldPropagation$Factory;->d:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Lbrave/propagation/ExtraFieldPropagation$Extra;->get(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 353
    :cond_0
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->c:Lbrave/propagation/Propagation$Setter;

    iget-object v4, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->a:Lbrave/propagation/ExtraFieldPropagation;

    iget-object v4, v4, Lbrave/propagation/ExtraFieldPropagation;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p2, v4, v2}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public inject(Lbrave/propagation/TraceContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "TC;)V"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->b:Lbrave/propagation/TraceContext$Injector;

    invoke-interface {v0, p1, p2}, Lbrave/propagation/TraceContext$Injector;->inject(Lbrave/propagation/TraceContext;Ljava/lang/Object;)V

    .line 344
    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-virtual {p1, v0}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrave/propagation/ExtraFieldPropagation$Extra;

    if-nez p1, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbrave/propagation/ExtraFieldPropagation$ExtraFieldInjector;->a(Lbrave/propagation/ExtraFieldPropagation$Extra;Ljava/lang/Object;)V

    return-void
.end method

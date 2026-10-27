.class final Lbrave/propagation/B3Propagation$B3Injector;
.super Ljava/lang/Object;
.source "B3Propagation.java"

# interfaces
.implements Lbrave/propagation/TraceContext$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/B3Propagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "B3Injector"
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
.field final propagation:Lbrave/propagation/B3Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/B3Propagation<",
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
.method constructor <init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Setter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/B3Propagation<",
            "TK;>;",
            "Lbrave/propagation/Propagation$Setter<",
            "TC;TK;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lbrave/propagation/B3Propagation$B3Injector;, "Lbrave/propagation/B3Propagation$B3Injector<TC;TK;>;"
    .local p1, "propagation":Lbrave/propagation/B3Propagation;, "Lbrave/propagation/B3Propagation<TK;>;"
    .local p2, "setter":Lbrave/propagation/Propagation$Setter;, "Lbrave/propagation/Propagation$Setter<TC;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lbrave/propagation/B3Propagation$B3Injector;->propagation:Lbrave/propagation/B3Propagation;

    .line 79
    iput-object p2, p0, Lbrave/propagation/B3Propagation$B3Injector;->setter:Lbrave/propagation/Propagation$Setter;

    .line 80
    return-void
.end method


# virtual methods
.method public inject(Lbrave/propagation/TraceContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "traceContext"    # Lbrave/propagation/TraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "TC;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Lbrave/propagation/B3Propagation$B3Injector;, "Lbrave/propagation/B3Propagation$B3Injector<TC;TK;>;"
    .local p2, "carrier":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Injector;->setter:Lbrave/propagation/Propagation$Setter;

    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v1, v1, Lbrave/propagation/B3Propagation;->traceIdKey:Ljava/lang/Object;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Injector;->setter:Lbrave/propagation/Propagation$Setter;

    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v1, v1, Lbrave/propagation/B3Propagation;->spanIdKey:Ljava/lang/Object;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanIdString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->parentIdString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "parentId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->setter:Lbrave/propagation/Propagation$Setter;

    iget-object v2, p0, Lbrave/propagation/B3Propagation$B3Injector;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v2, v2, Lbrave/propagation/B3Propagation;->parentSpanIdKey:Ljava/lang/Object;

    invoke-interface {v1, p2, v2, v0}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->debug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->setter:Lbrave/propagation/Propagation$Setter;

    iget-object v2, p0, Lbrave/propagation/B3Propagation$B3Injector;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v2, v2, Lbrave/propagation/B3Propagation;->debugKey:Ljava/lang/Object;

    const-string v3, "1"

    invoke-interface {v1, p2, v2, v3}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 92
    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->setter:Lbrave/propagation/Propagation$Setter;

    iget-object v2, p0, Lbrave/propagation/B3Propagation$B3Injector;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v2, v2, Lbrave/propagation/B3Propagation;->sampledKey:Ljava/lang/Object;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    goto :goto_0

    :cond_2
    const-string v3, "0"

    :goto_0
    invoke-interface {v1, p2, v2, v3}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :cond_3
    :goto_1
    return-void
.end method

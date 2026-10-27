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
.field final a:Lbrave/propagation/B3Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/B3Propagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final b:Lbrave/propagation/Propagation$Setter;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lbrave/propagation/B3Propagation$B3Injector;->a:Lbrave/propagation/B3Propagation;

    .line 79
    iput-object p2, p0, Lbrave/propagation/B3Propagation$B3Injector;->b:Lbrave/propagation/Propagation$Setter;

    return-void
.end method


# virtual methods
.method public inject(Lbrave/propagation/TraceContext;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "TC;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Injector;->b:Lbrave/propagation/Propagation$Setter;

    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->a:Lbrave/propagation/B3Propagation;

    iget-object v1, v1, Lbrave/propagation/B3Propagation;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Injector;->b:Lbrave/propagation/Propagation$Setter;

    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->a:Lbrave/propagation/B3Propagation;

    iget-object v1, v1, Lbrave/propagation/B3Propagation;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanIdString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->parentIdString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Injector;->b:Lbrave/propagation/Propagation$Setter;

    iget-object v2, p0, Lbrave/propagation/B3Propagation$B3Injector;->a:Lbrave/propagation/B3Propagation;

    iget-object v2, v2, Lbrave/propagation/B3Propagation;->d:Ljava/lang/Object;

    invoke-interface {v1, p2, v2, v0}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->debug()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_1

    .line 90
    iget-object p1, p0, Lbrave/propagation/B3Propagation$B3Injector;->b:Lbrave/propagation/Propagation$Setter;

    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Injector;->a:Lbrave/propagation/B3Propagation;

    iget-object v0, v0, Lbrave/propagation/B3Propagation;->f:Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Injector;->b:Lbrave/propagation/Propagation$Setter;

    iget-object v2, p0, Lbrave/propagation/B3Propagation$B3Injector;->a:Lbrave/propagation/B3Propagation;

    iget-object v2, v2, Lbrave/propagation/B3Propagation;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "0"

    :goto_0
    invoke-interface {v0, p2, v2, v1}, Lbrave/propagation/Propagation$Setter;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.class final Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;
.super Lbrave/handler/FinishedSpanHandler;
.source "FinishedSpanHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/handler/FinishedSpanHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompositeFinishedSpanHandler"
.end annotation


# instance fields
.field final alwaysSampleLocal:Z

.field final first:Lbrave/handler/FinishedSpanHandler;

.field final second:Lbrave/handler/FinishedSpanHandler;


# direct methods
.method constructor <init>(Lbrave/handler/FinishedSpanHandler;Lbrave/handler/FinishedSpanHandler;)V
    .locals 1
    .param p1, "first"    # Lbrave/handler/FinishedSpanHandler;
    .param p2, "second"    # Lbrave/handler/FinishedSpanHandler;

    .line 72
    invoke-direct {p0}, Lbrave/handler/FinishedSpanHandler;-><init>()V

    .line 73
    iput-object p1, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->first:Lbrave/handler/FinishedSpanHandler;

    .line 74
    iput-object p2, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->second:Lbrave/handler/FinishedSpanHandler;

    .line 75
    invoke-virtual {p1}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->alwaysSampleLocal:Z

    .line 76
    return-void
.end method


# virtual methods
.method public alwaysSampleLocal()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->alwaysSampleLocal:Z

    return v0
.end method

.method public handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    .locals 1
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "span"    # Lbrave/handler/MutableSpan;

    .line 79
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->first:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, p1, p2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->second:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, p1, p2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "result":Ljava/lang/StringBuilder;
    move-object v1, p0

    .line 89
    .local v1, "sequential":Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->second:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    :goto_0
    iget-object v2, v1, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->first:Lbrave/handler/FinishedSpanHandler;

    instance-of v2, v2, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, v1, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->first:Lbrave/handler/FinishedSpanHandler;

    move-object v1, v2

    check-cast v1, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;

    .line 92
    const-string v2, ","

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, v1, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->second:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_0
    iget-object v2, v1, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->first:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "CompositeFinishedSpanHandler("

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

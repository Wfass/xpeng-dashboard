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
.field final a:Lbrave/handler/FinishedSpanHandler;

.field final b:Lbrave/handler/FinishedSpanHandler;

.field final c:Z


# direct methods
.method constructor <init>(Lbrave/handler/FinishedSpanHandler;Lbrave/handler/FinishedSpanHandler;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lbrave/handler/FinishedSpanHandler;-><init>()V

    .line 73
    iput-object p1, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->a:Lbrave/handler/FinishedSpanHandler;

    .line 74
    iput-object p2, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->b:Lbrave/handler/FinishedSpanHandler;

    .line 75
    invoke-virtual {p1}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->c:Z

    return-void
.end method


# virtual methods
.method public alwaysSampleLocal()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->c:Z

    return v0
.end method

.method public handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->a:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, p1, p2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->b:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, p1, p2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->b:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v2, p0

    .line 90
    :goto_0
    iget-object v2, v2, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->a:Lbrave/handler/FinishedSpanHandler;

    instance-of v3, v2, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 91
    check-cast v2, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;

    .line 92
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, v2, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;->b:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "CompositeFinishedSpanHandler("

    .line 95
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;
.super Lbrave/handler/FinishedSpanHandler;
.source "FinishedSpanHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/handler/FinishedSpanHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoopAwareFinishedSpan"
.end annotation


# instance fields
.field final delegate:Lbrave/handler/FinishedSpanHandler;

.field final noop:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "delegate"    # Lbrave/handler/FinishedSpanHandler;
    .param p2, "noop"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    invoke-direct {p0}, Lbrave/handler/FinishedSpanHandler;-><init>()V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->delegate:Lbrave/handler/FinishedSpanHandler;

    .line 46
    iput-object p2, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alwaysSampleLocal()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->delegate:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result v0

    return v0
.end method

.method public handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    .locals 4
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "span"    # Lbrave/handler/MutableSpan;

    .line 50
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->delegate:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, p1, p2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v2

    const-string v3, "error accepting {0}"

    invoke-virtual {v2, v3, p1, v0}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 55
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->delegate:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

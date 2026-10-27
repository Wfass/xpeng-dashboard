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
.field final a:Lbrave/handler/FinishedSpanHandler;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lbrave/handler/FinishedSpanHandler;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->a:Lbrave/handler/FinishedSpanHandler;

    .line 46
    iput-object p2, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "delegate == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public alwaysSampleLocal()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->a:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result v0

    return v0
.end method

.method public handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    .locals 3

    .line 50
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->a:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, p1, p2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    .line 54
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    const-string v2, "error accepting {0}"

    invoke-virtual {v0, v2, p1, p2}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;->a:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

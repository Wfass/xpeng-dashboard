.class public final Lbrave/internal/handler/FinishedSpanHandlers;
.super Ljava/lang/Object;
.source "FinishedSpanHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;,
        Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Ljava/util/List;)Lbrave/handler/FinishedSpanHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbrave/handler/FinishedSpanHandler;",
            ">;)",
            "Lbrave/handler/FinishedSpanHandler;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 14
    sget-object p0, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    return-object p0

    .line 17
    :cond_0
    sget-object v1, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 19
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbrave/handler/FinishedSpanHandler;

    .line 20
    sget-object v4, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    sget-object v4, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    if-ne v1, v4, :cond_2

    move-object v1, v3

    goto :goto_1

    .line 25
    :cond_2
    new-instance v4, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;

    invoke-direct {v4, v1, v3}, Lbrave/internal/handler/FinishedSpanHandlers$CompositeFinishedSpanHandler;-><init>(Lbrave/handler/FinishedSpanHandler;Lbrave/handler/FinishedSpanHandler;)V

    move-object v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "finishedSpanHandlers == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static noopAware(Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbrave/handler/FinishedSpanHandler;
    .locals 1

    .line 35
    sget-object v0, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    if-ne p0, v0, :cond_0

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;

    invoke-direct {v0, p0, p1}, Lbrave/internal/handler/FinishedSpanHandlers$NoopAwareFinishedSpan;-><init>(Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method

.class public abstract Lbrave/Tracing;
.super Ljava/lang/Object;
.source "Tracing.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/Tracing$Default;,
        Lbrave/Tracing$LoggingReporter;,
        Lbrave/Tracing$Builder;
    }
.end annotation


# static fields
.field static volatile current:Lbrave/Tracing;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static current()Lbrave/Tracing;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 119
    sget-object v0, Lbrave/Tracing;->current:Lbrave/Tracing;

    return-object v0
.end method

.method public static currentTracer()Lbrave/Tracer;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 93
    sget-object v0, Lbrave/Tracing;->current:Lbrave/Tracing;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lbrave/Tracing;->tracer()Lbrave/Tracer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static newBuilder()Lbrave/Tracing$Builder;
    .locals 1

    .line 38
    new-instance v0, Lbrave/Tracing$Builder;

    invoke-direct {v0}, Lbrave/Tracing$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final clock(Lbrave/propagation/TraceContext;)Lbrave/Clock;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lbrave/Tracing;->tracer()Lbrave/Tracer;

    move-result-object v0

    iget-object v0, v0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbrave/internal/recorder/PendingSpans;->getOrCreate(Lbrave/propagation/TraceContext;Z)Lbrave/internal/recorder/PendingSpan;

    move-result-object p1

    invoke-virtual {p1}, Lbrave/internal/recorder/PendingSpan;->clock()Lbrave/Clock;

    move-result-object p1

    return-object p1
.end method

.method public abstract close()V
.end method

.method public abstract currentTraceContext()Lbrave/propagation/CurrentTraceContext;
.end method

.method public abstract errorParser()Lbrave/ErrorParser;
.end method

.method public abstract isNoop()Z
.end method

.method public propagation()Lbrave/propagation/Propagation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbrave/propagation/Propagation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lbrave/Tracing;->propagationFactory()Lbrave/propagation/Propagation$Factory;

    move-result-object v0

    sget-object v1, Lbrave/propagation/Propagation$KeyFactory;->STRING:Lbrave/propagation/Propagation$KeyFactory;

    invoke-virtual {v0, v1}, Lbrave/propagation/Propagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;

    move-result-object v0

    return-object v0
.end method

.method public abstract propagationFactory()Lbrave/propagation/Propagation$Factory;
.end method

.method public abstract sampler()Lbrave/sampler/Sampler;
.end method

.method public abstract setNoop(Z)V
.end method

.method public abstract tracer()Lbrave/Tracer;
.end method

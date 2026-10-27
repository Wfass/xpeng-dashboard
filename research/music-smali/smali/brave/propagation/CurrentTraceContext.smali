.class public abstract Lbrave/propagation/CurrentTraceContext;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/CurrentTraceContext$Default;,
        Lbrave/propagation/CurrentTraceContext$ScopeDecorator;,
        Lbrave/propagation/CurrentTraceContext$Scope;,
        Lbrave/propagation/CurrentTraceContext$Builder;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbrave/propagation/CurrentTraceContext$ScopeDecorator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lbrave/propagation/SamplingFlags;->DEBUG:Lbrave/propagation/SamplingFlags;

    invoke-virtual {v0}, Lbrave/propagation/SamplingFlags;->toString()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/CurrentTraceContext;->a:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lbrave/propagation/CurrentTraceContext$Builder;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lbrave/propagation/CurrentTraceContext$Builder;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbrave/propagation/CurrentTraceContext;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected decorateScope(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)Lbrave/propagation/CurrentTraceContext$Scope;
    .locals 3
    .param p1    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    iget-object v2, p0, Lbrave/propagation/CurrentTraceContext;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbrave/propagation/CurrentTraceContext$ScopeDecorator;

    invoke-interface {v2, p1, p2}, Lbrave/propagation/CurrentTraceContext$ScopeDecorator;->decorateScope(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public executor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 244
    new-instance v0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutor;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutor;-><init>(Lbrave/propagation/CurrentTraceContext;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 266
    new-instance v0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;

    invoke-direct {v0, p0, p1}, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;-><init>(Lbrave/propagation/CurrentTraceContext;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public abstract get()Lbrave/propagation/TraceContext;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end method

.method public maybeScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;
    .locals 1
    .param p1    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 122
    invoke-virtual {p0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    .line 124
    sget-object p1, Lbrave/propagation/CurrentTraceContext$Scope;->NOOP:Lbrave/propagation/CurrentTraceContext$Scope;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lbrave/propagation/CurrentTraceContext;->newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object p1

    return-object p1

    .line 127
    :cond_1
    invoke-virtual {p1, v0}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lbrave/propagation/CurrentTraceContext$Scope;->NOOP:Lbrave/propagation/CurrentTraceContext$Scope;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lbrave/propagation/CurrentTraceContext;->newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;
    .param p1    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    .line 223
    invoke-virtual {p0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 231
    new-instance v1, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;

    invoke-direct {v1, p0, v0, p1}, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;-><init>(Lbrave/propagation/CurrentTraceContext;Lbrave/propagation/TraceContext;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)",
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 213
    new-instance v1, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;

    invoke-direct {v1, p0, v0, p1}, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;-><init>(Lbrave/propagation/CurrentTraceContext;Lbrave/propagation/TraceContext;Ljava/util/concurrent/Callable;)V

    return-object v1
.end method

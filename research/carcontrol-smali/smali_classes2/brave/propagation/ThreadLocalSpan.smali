.class public Lbrave/propagation/ThreadLocalSpan;
.super Ljava/lang/Object;
.source "ThreadLocalSpan.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CURRENT_TRACER:Lbrave/propagation/ThreadLocalSpan;


# instance fields
.field final currentSpanInScopeStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayDeque<",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final tracer:Lbrave/Tracer;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Lbrave/propagation/ThreadLocalSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbrave/propagation/ThreadLocalSpan;-><init>(Lbrave/Tracer;)V

    sput-object v0, Lbrave/propagation/ThreadLocalSpan;->CURRENT_TRACER:Lbrave/propagation/ThreadLocalSpan;

    return-void
.end method

.method constructor <init>(Lbrave/Tracer;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lbrave/propagation/ThreadLocalSpan;->currentSpanInScopeStack:Ljava/lang/ThreadLocal;

    .line 92
    iput-object p1, p0, Lbrave/propagation/ThreadLocalSpan;->tracer:Lbrave/Tracer;

    return-void
.end method

.method public static create(Lbrave/Tracer;)Lbrave/propagation/ThreadLocalSpan;
    .locals 1

    const-string/jumbo v0, "tracer == null"

    .line 85
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    new-instance v0, Lbrave/propagation/ThreadLocalSpan;

    invoke-direct {v0, p0}, Lbrave/propagation/ThreadLocalSpan;-><init>(Lbrave/Tracer;)V

    return-object v0
.end method


# virtual methods
.method getCurrentSpanInScopeStack()Ljava/util/ArrayDeque;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lbrave/propagation/ThreadLocalSpan;->currentSpanInScopeStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 157
    iget-object v1, p0, Lbrave/propagation/ThreadLocalSpan;->currentSpanInScopeStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public next()Lbrave/Span;
    .locals 4
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->tracer()Lbrave/Tracer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {v0}, Lbrave/Tracer;->nextSpan()Lbrave/Span;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    .line 120
    invoke-virtual {v0, v1}, Lbrave/Tracer;->withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;

    move-result-object v0

    aput-object v0, v2, v3

    .line 121
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->getCurrentSpanInScopeStack()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-object v1
.end method

.method public next(Lbrave/propagation/TraceContextOrSamplingFlags;)Lbrave/Span;
    .locals 3
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->tracer()Lbrave/Tracer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Lbrave/Tracer;->nextSpan(Lbrave/propagation/TraceContextOrSamplingFlags;)Lbrave/Span;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, p1}, Lbrave/Tracer;->withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;

    move-result-object v0

    aput-object v0, v1, v2

    .line 108
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->getCurrentSpanInScopeStack()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-object p1
.end method

.method public remove()Lbrave/Span;
    .locals 3
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 134
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->tracer()Lbrave/Tracer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lbrave/Tracer;->currentSpan()Lbrave/Span;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->getCurrentSpanInScopeStack()Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 139
    aget-object v2, v1, v2

    check-cast v2, Lbrave/Span;

    const/4 v2, 0x1

    .line 140
    aget-object v1, v1, v2

    check-cast v1, Lbrave/Tracer$SpanInScope;

    invoke-virtual {v1}, Lbrave/Tracer$SpanInScope;->close()V

    return-object v0
.end method

.method tracer()Lbrave/Tracer;
    .locals 1

    .line 96
    iget-object v0, p0, Lbrave/propagation/ThreadLocalSpan;->tracer:Lbrave/Tracer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lbrave/Tracing;->currentTracer()Lbrave/Tracer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

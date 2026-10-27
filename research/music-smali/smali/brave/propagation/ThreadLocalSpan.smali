.class public Lbrave/propagation/ThreadLocalSpan;
.super Ljava/lang/Object;
.source "ThreadLocalSpan.java"


# static fields
.field public static final CURRENT_TRACER:Lbrave/propagation/ThreadLocalSpan;

.field static final synthetic c:Z


# instance fields
.field final a:Lbrave/Tracer;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end field

.field final b:Ljava/lang/ThreadLocal;
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-class v0, Lbrave/propagation/ThreadLocalSpan;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lbrave/propagation/ThreadLocalSpan;->c:Z

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

    iput-object v0, p0, Lbrave/propagation/ThreadLocalSpan;->b:Ljava/lang/ThreadLocal;

    .line 92
    iput-object p1, p0, Lbrave/propagation/ThreadLocalSpan;->a:Lbrave/Tracer;

    return-void
.end method

.method public static create(Lbrave/Tracer;)Lbrave/propagation/ThreadLocalSpan;
    .locals 1

    if-eqz p0, :cond_0

    .line 86
    new-instance v0, Lbrave/propagation/ThreadLocalSpan;

    invoke-direct {v0, p0}, Lbrave/propagation/ThreadLocalSpan;-><init>(Lbrave/Tracer;)V

    return-object v0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "tracer == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method a()Lbrave/Tracer;
    .locals 1

    .line 96
    iget-object v0, p0, Lbrave/propagation/ThreadLocalSpan;->a:Lbrave/Tracer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lbrave/Tracing;->currentTracer()Lbrave/Tracer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method b()Ljava/util/ArrayDeque;
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
    iget-object v0, p0, Lbrave/propagation/ThreadLocalSpan;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 157
    iget-object v1, p0, Lbrave/propagation/ThreadLocalSpan;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public next()Lbrave/Span;
    .locals 4
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->a()Lbrave/Tracer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {v0}, Lbrave/Tracer;->nextSpan()Lbrave/Span;

    move-result-object v1

    const/4 v2, 0x2

    .line 120
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Lbrave/Tracer;->withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;

    move-result-object v0

    aput-object v0, v2, v3

    .line 121
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->b()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-object v1
.end method

.method public next(Lbrave/propagation/TraceContextOrSamplingFlags;)Lbrave/Span;
    .locals 3
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->a()Lbrave/Tracer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    invoke-virtual {v0, p1}, Lbrave/Tracer;->nextSpan(Lbrave/propagation/TraceContextOrSamplingFlags;)Lbrave/Span;

    move-result-object p1

    const/4 v1, 0x2

    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, p1}, Lbrave/Tracer;->withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;

    move-result-object v0

    aput-object v0, v1, v2

    .line 108
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->b()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-object p1
.end method

.method public remove()Lbrave/Span;
    .locals 5
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 134
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->a()Lbrave/Tracer;

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
    invoke-virtual {p0}, Lbrave/propagation/ThreadLocalSpan;->b()Ljava/util/ArrayDeque;

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

    const/4 v3, 0x1

    .line 140
    aget-object v1, v1, v3

    check-cast v1, Lbrave/Tracer$SpanInScope;

    invoke-virtual {v1}, Lbrave/Tracer$SpanInScope;->close()V

    .line 141
    sget-boolean v1, Lbrave/propagation/ThreadLocalSpan;->c:Z

    if-nez v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Misalignment: scoped span "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " !=  current span "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    :goto_1
    return-object v0
.end method

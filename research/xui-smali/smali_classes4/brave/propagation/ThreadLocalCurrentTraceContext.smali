.class public Lbrave/propagation/ThreadLocalCurrentTraceContext;
.super Lbrave/propagation/CurrentTraceContext;
.source "ThreadLocalCurrentTraceContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lbrave/propagation/TraceContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final local:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lbrave/propagation/TraceContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbrave/propagation/ThreadLocalCurrentTraceContext;->DEFAULT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lbrave/propagation/CurrentTraceContext$Builder;Ljava/lang/ThreadLocal;)V
    .locals 2
    .param p1, "builder"    # Lbrave/propagation/CurrentTraceContext$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/CurrentTraceContext$Builder;",
            "Ljava/lang/ThreadLocal<",
            "Lbrave/propagation/TraceContext;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "local":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Lbrave/propagation/TraceContext;>;"
    invoke-direct {p0, p1}, Lbrave/propagation/CurrentTraceContext;-><init>(Lbrave/propagation/CurrentTraceContext$Builder;)V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    iput-object p2, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext;->local:Ljava/lang/ThreadLocal;

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "local == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create()Lbrave/propagation/CurrentTraceContext;
    .locals 1

    .line 29
    new-instance v0, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;-><init>()V

    invoke-virtual {v0}, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;->build()Lbrave/propagation/CurrentTraceContext;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lbrave/propagation/CurrentTraceContext$Builder;
    .locals 1

    .line 33
    new-instance v0, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;

    invoke-direct {v0}, Lbrave/propagation/ThreadLocalCurrentTraceContext$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lbrave/propagation/TraceContext;
    .locals 1

    .line 61
    iget-object v0, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/propagation/TraceContext;

    return-object v0
.end method

.method public newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;
    .locals 3
    .param p1, "currentSpan"    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 65
    iget-object v0, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/propagation/TraceContext;

    .line 66
    .local v0, "previous":Lbrave/propagation/TraceContext;
    iget-object v1, p0, Lbrave/propagation/ThreadLocalCurrentTraceContext;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    new-instance v1, Lbrave/propagation/ThreadLocalCurrentTraceContext$1ThreadLocalScope;

    invoke-direct {v1, p0, v0}, Lbrave/propagation/ThreadLocalCurrentTraceContext$1ThreadLocalScope;-><init>(Lbrave/propagation/ThreadLocalCurrentTraceContext;Lbrave/propagation/TraceContext;)V

    .line 73
    .local v1, "result":Lbrave/propagation/CurrentTraceContext$Scope;
    invoke-virtual {p0, p1, v1}, Lbrave/propagation/ThreadLocalCurrentTraceContext;->decorateScope(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object v2

    return-object v2
.end method

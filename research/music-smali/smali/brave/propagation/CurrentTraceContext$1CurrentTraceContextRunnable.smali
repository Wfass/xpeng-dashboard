.class Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/propagation/CurrentTraceContext;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1CurrentTraceContextRunnable"
.end annotation


# instance fields
.field final synthetic a:Lbrave/propagation/TraceContext;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lbrave/propagation/CurrentTraceContext;


# direct methods
.method constructor <init>(Lbrave/propagation/CurrentTraceContext;Lbrave/propagation/TraceContext;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;->c:Lbrave/propagation/CurrentTraceContext;

    iput-object p2, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;->a:Lbrave/propagation/TraceContext;

    iput-object p3, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;->c:Lbrave/propagation/CurrentTraceContext;

    iget-object v1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;->a:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Lbrave/propagation/CurrentTraceContext;->maybeScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextRunnable;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 226
    :try_start_1
    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    throw v1
.end method

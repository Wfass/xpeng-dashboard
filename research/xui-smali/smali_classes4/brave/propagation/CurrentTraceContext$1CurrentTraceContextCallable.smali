.class Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/propagation/CurrentTraceContext;->wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrentTraceContextCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbrave/propagation/CurrentTraceContext;

.field final synthetic val$invocationContext:Lbrave/propagation/TraceContext;

.field final synthetic val$task:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lbrave/propagation/CurrentTraceContext;Lbrave/propagation/TraceContext;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lbrave/propagation/CurrentTraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;->this$0:Lbrave/propagation/CurrentTraceContext;

    iput-object p2, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;->val$invocationContext:Lbrave/propagation/TraceContext;

    iput-object p3, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;->val$task:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;->this$0:Lbrave/propagation/CurrentTraceContext;

    iget-object v1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;->val$invocationContext:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Lbrave/propagation/CurrentTraceContext;->maybeScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object v0

    .line 209
    .local v0, "scope":Lbrave/propagation/CurrentTraceContext$Scope;
    :try_start_0
    iget-object v1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextCallable;->val$task:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    .line 209
    :cond_0
    return-object v1

    .line 208
    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :cond_1
    :goto_0
    throw v1
.end method

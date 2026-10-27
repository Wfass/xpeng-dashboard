.class Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutor;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/propagation/CurrentTraceContext;->executor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1CurrentTraceContextExecutor"
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lbrave/propagation/CurrentTraceContext;


# direct methods
.method constructor <init>(Lbrave/propagation/CurrentTraceContext;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutor;->b:Lbrave/propagation/CurrentTraceContext;

    iput-object p2, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutor;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutor;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutor;->b:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v1, p1}, Lbrave/propagation/CurrentTraceContext;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;
.super Lbrave/internal/WrappingExecutorService;
.source "CurrentTraceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/propagation/CurrentTraceContext;->executorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CurrentTraceContextExecutorService"
.end annotation


# instance fields
.field final synthetic this$0:Lbrave/propagation/CurrentTraceContext;

.field final synthetic val$delegate:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lbrave/propagation/CurrentTraceContext;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;->this$0:Lbrave/propagation/CurrentTraceContext;

    iput-object p2, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;->val$delegate:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lbrave/internal/WrappingExecutorService;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 255
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;->val$delegate:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 263
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;->this$0:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0, p1}, Lbrave/propagation/CurrentTraceContext;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method protected wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
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

    .line 259
    iget-object v0, p0, Lbrave/propagation/CurrentTraceContext$1CurrentTraceContextExecutorService;->this$0:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0, p1}, Lbrave/propagation/CurrentTraceContext;->wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p1

    return-object p1
.end method

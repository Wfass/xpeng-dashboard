.class Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager$1;
.super Ljava/lang/Object;
.source "TaskExecutorManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager$1;->this$0:Lcom/xiaopeng/appstart/core/executor/TaskExecutorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 562
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 9
    .param p1, "r"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$300(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$300(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 566
    .local v0, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    .line 567
    .local v1, "thread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$400(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 568
    .local v2, "count":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$400(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 569
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v4, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v4}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$400(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 571
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$500(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 572
    return-object v1
.end method

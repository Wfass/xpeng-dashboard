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
    .locals 7
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
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 567
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$400(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 568
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$400(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 569
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v2, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$400(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder$1;->this$0:Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;->access$500(Lcom/xiaopeng/lib/utils/ThreadUtils$ThreadFactoryBuilder;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object p1
.end method

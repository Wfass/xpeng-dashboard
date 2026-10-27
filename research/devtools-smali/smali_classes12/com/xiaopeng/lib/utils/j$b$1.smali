.class Lcom/xiaopeng/lib/utils/j$b$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/j$b;->oX()Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WU:Lcom/xiaopeng/lib/utils/j$b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/utils/j$b;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/j$b$1;->WU:Lcom/xiaopeng/lib/utils/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 564
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$b$1;->WU:Lcom/xiaopeng/lib/utils/j$b;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j$b;->a(Lcom/xiaopeng/lib/utils/j$b;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$b$1;->WU:Lcom/xiaopeng/lib/utils/j$b;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j$b;->a(Lcom/xiaopeng/lib/utils/j$b;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 565
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 566
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$b$1;->WU:Lcom/xiaopeng/lib/utils/j$b;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j$b;->b(Lcom/xiaopeng/lib/utils/j$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 567
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/lib/utils/j$b$1;->WU:Lcom/xiaopeng/lib/utils/j$b;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j$b;->b(Lcom/xiaopeng/lib/utils/j$b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 568
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v2, p0, Lcom/xiaopeng/lib/utils/j$b$1;->WU:Lcom/xiaopeng/lib/utils/j$b;

    invoke-static {v2}, Lcom/xiaopeng/lib/utils/j$b;->b(Lcom/xiaopeng/lib/utils/j$b;)Ljava/lang/String;

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

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$b$1;->WU:Lcom/xiaopeng/lib/utils/j$b;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j$b;->c(Lcom/xiaopeng/lib/utils/j$b;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 571
    return-object p1
.end method

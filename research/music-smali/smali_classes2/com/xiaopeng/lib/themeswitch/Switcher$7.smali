.class Lcom/xiaopeng/lib/themeswitch/Switcher$7;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->updateNightThemeAsync(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

.field final synthetic val$total:I

.field final synthetic val$updateDrawableRunnableList:Ljava/util/ArrayList;

.field final synthetic val$updateRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Ljava/util/ArrayList;ILjava/lang/Runnable;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->val$updateDrawableRunnableList:Ljava/util/ArrayList;

    iput p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->val$total:I

    iput-object p4, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->val$updateRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->val$updateDrawableRunnableList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 470
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->val$updateDrawableRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    iget v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->val$total:I

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$100(Lcom/xiaopeng/lib/themeswitch/Switcher;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    invoke-static {v1}, Lcom/xiaopeng/lib/themeswitch/Switcher;->access$000(Lcom/xiaopeng/lib/themeswitch/Switcher;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$7;->val$updateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postMainThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x32

    .line 482
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 486
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->postBackground(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 471
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

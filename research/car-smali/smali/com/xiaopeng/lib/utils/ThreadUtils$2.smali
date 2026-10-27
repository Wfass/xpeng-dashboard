.class final Lcom/xiaopeng/lib/utils/ThreadUtils$2;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/ThreadUtils;->doPost(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackToMainThread:Z

.field final synthetic val$looper:Landroid/os/Looper;

.field final synthetic val$postCallback:Ljava/lang/Runnable;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$task:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$postCallback:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$callbackToMainThread:Z

    iput-object p4, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$looper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$postCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 300
    iget-boolean v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$callbackToMainThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$looper:Landroid/os/Looper;

    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 303
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$looper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$postCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 301
    :cond_1
    :goto_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$postCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_2
    :goto_2
    const-string v0, "ThreadUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$task:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->access$200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$2;->val$task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void
.end method

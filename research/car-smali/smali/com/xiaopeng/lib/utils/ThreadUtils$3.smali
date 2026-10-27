.class final Lcom/xiaopeng/lib/utils/ThreadUtils$3;
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

.field final synthetic val$finalHandler:Landroid/os/Handler;

.field final synthetic val$looper:Landroid/os/Looper;

.field final synthetic val$postRunnable:Ljava/lang/Runnable;

.field final synthetic val$preCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$preCallback:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$callbackToMainThread:Z

    iput-object p3, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$looper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$finalHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$postRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$preCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 315
    iget-boolean v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$callbackToMainThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$looper:Landroid/os/Looper;

    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$looper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaopeng/lib/utils/ThreadUtils$3$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/utils/ThreadUtils$3$2;-><init>(Lcom/xiaopeng/lib/utils/ThreadUtils$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 316
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/ThreadUtils;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/utils/ThreadUtils$3$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/utils/ThreadUtils$3$1;-><init>(Lcom/xiaopeng/lib/utils/ThreadUtils$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/ThreadUtils$3;->val$postRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 335
    :goto_1
    return-void
.end method

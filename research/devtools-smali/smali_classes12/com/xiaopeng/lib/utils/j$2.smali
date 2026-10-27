.class final Lcom/xiaopeng/lib/utils/j$2;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic WI:Ljava/lang/Runnable;

.field final synthetic WJ:Ljava/lang/Runnable;

.field final synthetic WK:Z

.field final synthetic WL:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;ZLandroid/os/Looper;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/j$2;->WI:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/xiaopeng/lib/utils/j$2;->WJ:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/xiaopeng/lib/utils/j$2;->WK:Z

    iput-object p4, p0, Lcom/xiaopeng/lib/utils/j$2;->WL:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$2;->WI:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$2;->WJ:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 299
    iget-boolean v0, p0, Lcom/xiaopeng/lib/utils/j$2;->WK:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$2;->WL:Landroid/os/Looper;

    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oV()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 302
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/j$2;->WL:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/j$2;->WJ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 300
    :cond_1
    :goto_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oV()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/j$2;->WJ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_2
    :goto_2
    invoke-static {}, Lcom/xiaopeng/lib/utils/j;->oW()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/j$2;->WI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

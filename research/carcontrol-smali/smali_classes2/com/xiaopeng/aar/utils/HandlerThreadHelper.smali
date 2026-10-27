.class public Lcom/xiaopeng/aar/utils/HandlerThreadHelper;
.super Ljava/lang/Object;
.source "HandlerThreadHelper.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/aar/utils/HandlerThreadHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

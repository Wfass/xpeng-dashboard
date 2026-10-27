.class public Lcom/xiaopeng/lib/utils/LooperUtils;
.super Ljava/lang/Object;
.source "LooperUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertAsyncThread()V
    .locals 2

    .line 14
    invoke-static {}, Lcom/xiaopeng/lib/utils/LooperUtils;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the async thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertMainThread()V
    .locals 2

    .line 8
    invoke-static {}, Lcom/xiaopeng/lib/utils/LooperUtils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isOnMainThread()Z
    .locals 2

    .line 24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

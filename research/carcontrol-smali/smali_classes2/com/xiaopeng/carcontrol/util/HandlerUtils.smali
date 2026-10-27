.class public Lcom/xiaopeng/carcontrol/util/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$removeCallbacks$0(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "handler",
            "callback"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$removeMessages$1(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "handler",
            "what",
            "obj"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public static removeCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "handler",
            "callback"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$ctdFLiIGjgzqfcrMDS7mzZqhcYM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$ctdFLiIGjgzqfcrMDS7mzZqhcYM;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static removeMessages(Landroid/os/Handler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "handler",
            "what"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/carcontrol/util/HandlerUtils;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "handler",
            "what",
            "obj"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$-aJKsg8JTRr3dGUkb5jl4mmncgU;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.class public Lbko;
.super Ljava/lang/Object;
.source "ReqThreadUtil.java"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "req_single_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lbko;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 17
    sget-object v0, Lbko;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

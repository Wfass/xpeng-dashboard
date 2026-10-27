.class public Lblf;
.super Ljava/lang/Object;
.source "PlayerThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lblf$a;
    }
.end annotation


# static fields
.field private static volatile a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lblf;
    .locals 1

    .line 16
    sget-object v0, Lblf$a;->a:Lblf;

    return-object v0
.end method

.method private b()Landroid/os/Handler;
    .locals 3

    .line 20
    sget-object v0, Lblf;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/xiaopeng/musicradio/utils/bh;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lblf;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PlayerThreadUtil"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 26
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lblf;->a:Landroid/os/Handler;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lblf;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lblf;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

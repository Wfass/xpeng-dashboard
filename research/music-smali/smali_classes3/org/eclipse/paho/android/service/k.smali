.class public final Lorg/eclipse/paho/android/service/k;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;


# direct methods
.method public static declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 4

    const-class v0, Lorg/eclipse/paho/android/service/k;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/android/service/k;->a:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AlarmPingSender"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/paho/android/service/k;->a:Landroid/os/HandlerThread;

    .line 19
    sget-object v1, Lorg/eclipse/paho/android/service/k;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 21
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lorg/eclipse/paho/android/service/k;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lorg/eclipse/paho/android/service/k;->b:Landroid/os/Handler;

    .line 24
    :cond_0
    sget-object v1, Lorg/eclipse/paho/android/service/k;->b:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

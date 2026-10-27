.class public final Lorg/eclipse/paho/android/service/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static final ALARM_PING_THREAD_NAME:Ljava/lang/String; = "AlarmPingSender"

.field private static sAlarmPingSenderHandler:Landroid/os/Handler;

.field private static sAlarmPingSenderThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized doAlarmPingInBackground(Ljava/lang/Runnable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    const-class v0, Lorg/eclipse/paho/android/service/ThreadUtils;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lorg/eclipse/paho/android/service/ThreadUtils;->sAlarmPingSenderThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AlarmPingSender"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/paho/android/service/ThreadUtils;->sAlarmPingSenderThread:Landroid/os/HandlerThread;

    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 21
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lorg/eclipse/paho/android/service/ThreadUtils;->sAlarmPingSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lorg/eclipse/paho/android/service/ThreadUtils;->sAlarmPingSenderHandler:Landroid/os/Handler;

    .line 24
    :cond_0
    sget-object v1, Lorg/eclipse/paho/android/service/ThreadUtils;->sAlarmPingSenderHandler:Landroid/os/Handler;

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

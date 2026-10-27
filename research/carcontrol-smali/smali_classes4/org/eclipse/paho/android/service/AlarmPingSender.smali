.class Lorg/eclipse/paho/android/service/AlarmPingSender;
.super Ljava/lang/Object;
.source "AlarmPingSender.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttPingSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;,
        Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmPingSender"


# instance fields
.field private alarmReceiver:Landroid/content/BroadcastReceiver;

.field private comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private volatile hasStarted:Z

.field private pendingIntent:Landroid/app/PendingIntent;

.field private service:Lorg/eclipse/paho/android/service/MqttService;

.field private that:Lorg/eclipse/paho/android/service/AlarmPingSender;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "service",
            "connection"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->hasStarted:Z

    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->service:Lorg/eclipse/paho/android/service/MqttService;

    .line 65
    iput-object p0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->that:Lorg/eclipse/paho/android/service/AlarmPingSender;

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Neither service nor client can be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/eclipse/paho/android/service/AlarmPingSender;)Lorg/eclipse/paho/android/service/AlarmPingSender;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->that:Lorg/eclipse/paho/android/service/AlarmPingSender;

    return-object p0
.end method

.method static synthetic access$100(Lorg/eclipse/paho/android/service/AlarmPingSender;)Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    return-object p0
.end method

.method static synthetic access$300(Lorg/eclipse/paho/android/service/AlarmPingSender;)Lorg/eclipse/paho/android/service/MqttService;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->service:Lorg/eclipse/paho/android/service/MqttService;

    return-object p0
.end method


# virtual methods
.method public init(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comms"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 71
    new-instance p1, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;-><init>(Lorg/eclipse/paho/android/service/AlarmPingSender;)V

    iput-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->alarmReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public declared-synchronized schedule(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayInMilliseconds"
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 115
    iget-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->service:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "alarm"

    .line 116
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 125
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-lt p2, v2, :cond_0

    .line 126
    iget-object p2, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v0, v1, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->hasStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttService.pingSender."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 80
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmPingSender"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register AlarmReceiver to MqttService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->service:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->alarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->service:Lorg/eclipse/paho/android/service/MqttService;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x8000000

    invoke-static {v1, v2, v3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->pendingIntent:Landroid/app/PendingIntent;

    .line 87
    iget-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getKeepAlive()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/AlarmPingSender;->schedule(J)V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->hasStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->hasStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "AlarmPingSender"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister AlarmReceiver to MqttService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->service:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 100
    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->hasStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->service:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender;->alarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

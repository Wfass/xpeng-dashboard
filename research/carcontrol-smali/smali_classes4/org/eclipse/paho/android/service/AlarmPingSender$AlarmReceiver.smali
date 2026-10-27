.class Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmPingSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/AlarmPingSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmReceiver"
.end annotation


# instance fields
.field private pingRunner:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

.field final synthetic this$0:Lorg/eclipse/paho/android/service/AlarmPingSender;

.field private final wakeLockTag:Ljava/lang/String;

.field private wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/AlarmPingSender;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->this$0:Lorg/eclipse/paho/android/service/AlarmPingSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->pingRunner:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttService.client."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-static {p1}, Lorg/eclipse/paho/android/service/AlarmPingSender;->access$000(Lorg/eclipse/paho/android/service/AlarmPingSender;)Lorg/eclipse/paho/android/service/AlarmPingSender;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/paho/android/service/AlarmPingSender;->access$100(Lorg/eclipse/paho/android/service/AlarmPingSender;)Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->wakeLockTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->executePingTask()V

    return-void
.end method

.method private executePingTask()V
    .locals 6

    const-string v0, "AlarmPingSender"

    const-string v1, "alarm ping sender execute"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->this$0:Lorg/eclipse/paho/android/service/AlarmPingSender;

    invoke-static {v1}, Lorg/eclipse/paho/android/service/AlarmPingSender;->access$300(Lorg/eclipse/paho/android/service/AlarmPingSender;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 212
    iget-object v2, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->wakeLockTag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 213
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 215
    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->pingRunner:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1, v3}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous ping async task was cancelled at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    new-instance v0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->this$0:Lorg/eclipse/paho/android/service/AlarmPingSender;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;-><init>(Lorg/eclipse/paho/android/service/AlarmPingSender;Lorg/eclipse/paho/android/service/AlarmPingSender$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->pingRunner:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

    new-array v1, v3, [Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    const/4 v2, 0x0

    .line 222
    iget-object v3, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->this$0:Lorg/eclipse/paho/android/service/AlarmPingSender;

    invoke-static {v3}, Lorg/eclipse/paho/android/service/AlarmPingSender;->access$100(Lorg/eclipse/paho/android/service/AlarmPingSender;)Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    iget-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 195
    new-instance p1, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver$1;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver$1;-><init>(Lorg/eclipse/paho/android/service/AlarmPingSender$AlarmReceiver;)V

    invoke-static {p1}, Lorg/eclipse/paho/android/service/ThreadUtils;->doAlarmPingInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;
.super Ljava/lang/Object;
.source "MqttService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$context"
        }
    .end annotation

    .line 891
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iput-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 894
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v0, v0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MQTT"

    .line 896
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 898
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v1, v1, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    const-string v2, "MqttService"

    const-string v3, "Reconnect for Network recovery."

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v1, v1, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/MqttService;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 900
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->val$context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 901
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 903
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 904
    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v3, v3, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {v3}, Lorg/eclipse/paho/android/service/MqttService;->access$400(Lorg/eclipse/paho/android/service/MqttService;)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 905
    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v3, v3, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {v3}, Lorg/eclipse/paho/android/service/MqttService;->access$400(Lorg/eclipse/paho/android/service/MqttService;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    iget-object v3, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v3, v3, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    const-string v4, "Online,reconnect."

    invoke-virtual {v3, v2, v4}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 908
    new-instance v3, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1$1;

    invoke-direct {v3, p0}, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1$1;-><init>(Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 918
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v2, v2, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {v2, v1}, Lorg/eclipse/paho/android/service/MqttService;->access$402(Lorg/eclipse/paho/android/service/MqttService;I)I

    goto :goto_0

    .line 921
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v1, v1, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->access$402(Lorg/eclipse/paho/android/service/MqttService;I)I

    .line 922
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v1, v1, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {v1}, Lorg/eclipse/paho/android/service/MqttService;->access$500(Lorg/eclipse/paho/android/service/MqttService;)V

    .line 925
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

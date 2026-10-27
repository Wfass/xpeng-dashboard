.class Lorg/eclipse/paho/android/service/MqttService$b;
.super Landroid/content/BroadcastReceiver;
.source "MqttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/MqttService;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V
    .locals 0

    .line 875
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttService$b;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 880
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    const-string v0, "MqttService"

    const-string v1, "Internal network status receive."

    invoke-virtual {p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/HandlerThread;

    move-result-object p2

    if-nez p2, :cond_0

    .line 885
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "handlerThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 886
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/HandlerThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 888
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/MqttService;->b(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/Handler;

    move-result-object p2

    if-nez p2, :cond_1

    .line 889
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Lorg/eclipse/paho/android/service/MqttService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 891
    :cond_1
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService$b;->a:Lorg/eclipse/paho/android/service/MqttService;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/MqttService;->b(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lorg/eclipse/paho/android/service/MqttService$b$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/paho/android/service/MqttService$b$1;-><init>(Lorg/eclipse/paho/android/service/MqttService$b;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

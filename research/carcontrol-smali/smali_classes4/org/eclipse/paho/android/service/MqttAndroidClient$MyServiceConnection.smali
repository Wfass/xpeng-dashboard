.class final Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;
.super Ljava/lang/Object;
.source "MqttAndroidClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/MqttAndroidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/paho/android/service/MqttAndroidClient;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;->this$0:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttAndroidClient$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "binder"
        }
    .end annotation

    const-string p1, "MqttAndroidClient"

    const-string v0, "onServiceConnected"

    .line 119
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;->this$0:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    check-cast p2, Lorg/eclipse/paho/android/service/MqttServiceBinder;

    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/MqttServiceBinder;->getService()Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->access$002(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;

    .line 121
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;->this$0:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->access$102(Lorg/eclipse/paho/android/service/MqttAndroidClient;Z)Z

    .line 125
    invoke-static {}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->access$300()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection$1;

    invoke-direct {p2, p0}, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection$1;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-string p1, "MqttAndroidClient"

    const-string v0, "onServiceDisconnected"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttAndroidClient$MyServiceConnection;->this$0:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/eclipse/paho/android/service/MqttAndroidClient;->access$002(Lorg/eclipse/paho/android/service/MqttAndroidClient;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;

    return-void
.end method

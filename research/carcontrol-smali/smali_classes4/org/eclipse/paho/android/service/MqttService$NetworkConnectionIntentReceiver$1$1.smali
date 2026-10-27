.class Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1$1;
.super Ljava/util/TimerTask;
.source "MqttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 908
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1$1;->this$2:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 911
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1$1;->this$2:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;

    iget-object v0, v0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver$1;->this$1:Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;

    iget-object v0, v0, Lorg/eclipse/paho/android/service/MqttService$NetworkConnectionIntentReceiver;->this$0:Lorg/eclipse/paho/android/service/MqttService;

    invoke-virtual {v0}, Lorg/eclipse/paho/android/service/MqttService;->reconnect()V

    return-void
.end method

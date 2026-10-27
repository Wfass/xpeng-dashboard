.class Lorg/eclipse/paho/android/service/MqttConnection$2;
.super Ljava/lang/Object;
.source "MqttConnection.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/MqttConnection;->connectionLost(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/paho/android/service/MqttConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 880
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttConnection$2;->this$0:Lorg/eclipse/paho/android/service/MqttConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "asyncActionToken",
            "exception"
        }
    .end annotation

    .line 892
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttConnection$2;->this$0:Lorg/eclipse/paho/android/service/MqttConnection;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/MqttConnection;->access$200(Lorg/eclipse/paho/android/service/MqttConnection;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect onFailure, exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MqttConnection"

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asyncActionToken"
        }
    .end annotation

    .line 885
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttConnection$2;->this$0:Lorg/eclipse/paho/android/service/MqttConnection;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/MqttConnection;->access$200(Lorg/eclipse/paho/android/service/MqttConnection;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    const-string v1, "disconnect onSuccess"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;
.super Lorg/eclipse/paho/android/service/MqttTokenAndroid;
.source "MqttDeliveryTokenAndroid.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;


# instance fields
.field private message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "userContext",
            "listener",
            "message"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 36
    iput-object p4, p0, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-void
.end method


# virtual methods
.method public getMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method notifyDelivery(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delivered"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 53
    invoke-super {p0}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->notifyComplete()V

    return-void
.end method

.method setMessage(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;->message:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttDeliveryTokenAndroid{topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttDeliveryTokenAndroid;->getTopics()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

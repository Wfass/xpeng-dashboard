.class Lorg/eclipse/paho/android/service/MqttTokenAndroid;
.super Ljava/lang/Object;
.source "MqttTokenAndroid.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttToken;


# instance fields
.field private client:Lorg/eclipse/paho/android/service/MqttAndroidClient;

.field private delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

.field private volatile isComplete:Z

.field private volatile lastException:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private listener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

.field private pendingException:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private topics:[Ljava/lang/String;

.field private userContext:Ljava/lang/Object;

.field private waitObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "client",
            "userContext",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/android/service/MqttTokenAndroid;-><init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/eclipse/paho/android/service/MqttAndroidClient;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Ljava/lang/String;)V
    .locals 1
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
            "topics"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->client:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    .line 73
    iput-object p2, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->userContext:Ljava/lang/Object;

    .line 74
    iput-object p3, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->listener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 75
    iput-object p4, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->topics:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->listener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    return-object v0
.end method

.method public getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->client:Lorg/eclipse/paho/android/service/MqttAndroidClient;

    return-object v0
.end method

.method public getException()Lorg/eclipse/paho/client/mqttv3/MqttException;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->lastException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    return-object v0
.end method

.method public getGrantedQos()[I
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getGrantedQos()[I

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getMessageId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getResponse()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getResponse()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPresent()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getSessionPresent()Z

    move-result v0

    return v0
.end method

.method public getTopics()[Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getTopics()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getTopics()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->topics:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->userContext:Ljava/lang/Object;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->isComplete:Z

    return v0
.end method

.method notifyComplete()V
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 121
    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->isComplete:Z

    .line 122
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 123
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->listener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v1, p0}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    .line 126
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized notifyFailure(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    .line 134
    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->isComplete:Z

    .line 135
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v1, :cond_0

    .line 136
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->pendingException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->pendingException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 140
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 141
    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v1, :cond_1

    .line 142
    move-object v1, p1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    iput-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->lastException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->listener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v1, :cond_2

    .line 145
    invoke-interface {v1, p0, p1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    .line 147
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 147
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->listener:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    return-void
.end method

.method setComplete(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "complete"
        }
    .end annotation

    .line 160
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->isComplete:Z

    return-void
.end method

.method setDelegate(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->delegate:Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    return-void
.end method

.method setException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->lastException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userContext"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->userContext:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttTokenAndroid{topics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->topics:[Ljava/lang/String;

    .line 258
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

.method public declared-synchronized waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 89
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->pendingException:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_0

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForCompletion(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->waitObject:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 107
    :catch_0
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->isComplete:Z

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttTokenAndroid;->pendingException:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez p1, :cond_0

    .line 113
    monitor-exit v0

    return-void

    .line 111
    :cond_0
    throw p1

    .line 108
    :cond_1
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw p1

    .line 113
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

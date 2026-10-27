.class Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;
.super Landroid/os/AsyncTask;
.source "AlarmPingSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/AlarmPingSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_COMPLETION:I = 0x1770


# instance fields
.field success:Z

.field final synthetic this$0:Lorg/eclipse/paho/android/service/AlarmPingSender;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/AlarmPingSender;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->this$0:Lorg/eclipse/paho/android/service/AlarmPingSender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/AlarmPingSender;Lorg/eclipse/paho/android/service/AlarmPingSender$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;-><init>(Lorg/eclipse/paho/android/service/AlarmPingSender;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comms"
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    aget-object p1, p1, v0

    new-instance v0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask$1;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask$1;-><init>(Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->checkForActivity(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object p1

    const-string v0, "AlarmPingSender"

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1770

    .line 156
    :try_start_0
    invoke-interface {p1, v1, v2}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "Ping async background : Ping command was not sent by the client."

    .line 158
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 163
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping async background : Ignore unknown exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 161
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ping async background : Ignore MQTT exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_2
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    if-nez p1, :cond_1

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ping async background task completed at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " Success is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/Boolean;

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    invoke-direct {p1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comms"
        }
    .end annotation

    .line 134
    check-cast p1, [Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->doInBackground([Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ping async task onCancelled() Success is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmPingSender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ping async task onPostExecute() Success is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmPingSender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "success"
        }
    .end annotation

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

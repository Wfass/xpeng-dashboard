.class Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask$1;
.super Ljava/lang/Object;
.source "AlarmPingSender.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->doInBackground([Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask$1;->this$1:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 0
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

    const-string p1, "AlarmPingSender"

    const-string p2, "Ping async task : Failed."

    .line 149
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask$1;->this$1:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asyncActionToken"
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask$1;->this$1:Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/eclipse/paho/android/service/AlarmPingSender$PingAsyncTask;->success:Z

    return-void
.end method

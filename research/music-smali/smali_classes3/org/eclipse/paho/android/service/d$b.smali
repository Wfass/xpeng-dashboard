.class final Lorg/eclipse/paho/android/service/d$b;
.super Ljava/lang/Object;
.source "MqttAndroidClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/d;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/d;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d$b;->a:Lorg/eclipse/paho/android/service/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/d;Lorg/eclipse/paho/android/service/d$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d$b;-><init>(Lorg/eclipse/paho/android/service/d;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MqttAndroidClient"

    const-string v0, "onServiceConnected"

    .line 119
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$b;->a:Lorg/eclipse/paho/android/service/d;

    check-cast p2, Lorg/eclipse/paho/android/service/g;

    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/g;->a()Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;

    .line 121
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$b;->a:Lorg/eclipse/paho/android/service/d;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;Z)Z

    .line 125
    invoke-static {}, Lorg/eclipse/paho/android/service/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lorg/eclipse/paho/android/service/d$b$1;

    invoke-direct {p2, p0}, Lorg/eclipse/paho/android/service/d$b$1;-><init>(Lorg/eclipse/paho/android/service/d$b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MqttAndroidClient"

    const-string v0, "onServiceDisconnected"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d$b;->a:Lorg/eclipse/paho/android/service/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/eclipse/paho/android/service/d;->a(Lorg/eclipse/paho/android/service/d;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;

    return-void
.end method

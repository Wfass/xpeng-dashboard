.class Lorg/eclipse/paho/android/service/e$2;
.super Ljava/lang/Object;
.source "MqttConnection.java"

# interfaces
.implements Lced;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/e;->connectionLost(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/e;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/e;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e$2;->a:Lorg/eclipse/paho/android/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lceh;Ljava/lang/Throwable;)V
    .locals 2

    .line 892
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$2;->a:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect onFailure, exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MqttConnection"

    invoke-virtual {p1, v0, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lceh;)V
    .locals 2

    .line 885
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$2;->a:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    const-string v1, "disconnect onSuccess"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lorg/eclipse/paho/android/service/e$3;
.super Lorg/eclipse/paho/android/service/e$b;
.source "MqttConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/e;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lorg/eclipse/paho/android/service/e;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->b:Lorg/eclipse/paho/android/service/e;

    iput-object p3, p0, Lorg/eclipse/paho/android/service/e$3;->a:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lceh;Ljava/lang/Throwable;)V
    .locals 2

    .line 1148
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->a:Landroid/os/Bundle;

    .line 1150
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 1148
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1154
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->b:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e$3;->b:Lorg/eclipse/paho/android/service/e;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/e;->b(Lorg/eclipse/paho/android/service/e;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e$3;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    .line 1157
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->b:Lorg/eclipse/paho/android/service/e;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e$3;->a:Landroid/os/Bundle;

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/e;->b(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Lceh;)V
    .locals 2

    .line 1141
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->b:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    const-string v1, "Reconnect Success!"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->b:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v1, "DeliverBacklog when reconnect."

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$3;->b:Lorg/eclipse/paho/android/service/e;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e$3;->a:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V

    return-void
.end method

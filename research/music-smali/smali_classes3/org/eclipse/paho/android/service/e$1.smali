.class Lorg/eclipse/paho/android/service/e$1;
.super Lorg/eclipse/paho/android/service/e$b;
.source "MqttConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/e;->a(Lcem;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 271
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e$1;->b:Lorg/eclipse/paho/android/service/e;

    iput-object p3, p0, Lorg/eclipse/paho/android/service/e$1;->a:Landroid/os/Bundle;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lceh;Ljava/lang/Throwable;)V
    .locals 2

    .line 282
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$1;->a:Landroid/os/Bundle;

    .line 284
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 282
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$1;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 287
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$1;->b:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect fail, call connect to reconnect.reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MqttConnection"

    .line 287
    invoke-virtual {p1, v0, p2}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$1;->b:Lorg/eclipse/paho/android/service/e;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e$1;->a:Landroid/os/Bundle;

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/e;->b(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Lceh;)V
    .locals 2

    .line 275
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$1;->b:Lorg/eclipse/paho/android/service/e;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e$1;->a:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V

    .line 276
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$1;->b:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    const-string v0, "MqttConnection"

    const-string v1, "connect success!"

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

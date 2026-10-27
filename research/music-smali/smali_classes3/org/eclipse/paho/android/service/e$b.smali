.class Lorg/eclipse/paho/android/service/e$b;
.super Ljava/lang/Object;
.source "MqttConnection.java"

# interfaces
.implements Lced;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field final synthetic c:Lorg/eclipse/paho/android/service/e;


# direct methods
.method private constructor <init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lorg/eclipse/paho/android/service/e$b;->c:Lorg/eclipse/paho/android/service/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    iput-object p2, p0, Lorg/eclipse/paho/android/service/e$b;->a:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;Lorg/eclipse/paho/android/service/e$1;)V
    .locals 0

    .line 1041
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/android/service/e$b;-><init>(Lorg/eclipse/paho/android/service/e;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lceh;Ljava/lang/Throwable;)V
    .locals 2

    .line 1056
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$b;->a:Landroid/os/Bundle;

    .line 1057
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 1056
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$b;->a:Landroid/os/Bundle;

    const-string v0, "MqttService.exception"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1062
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$b;->c:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/paho/android/service/e$b;->c:Lorg/eclipse/paho/android/service/e;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/e;->b(Lorg/eclipse/paho/android/service/e;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/e$b;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p2, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Lceh;)V
    .locals 3

    .line 1051
    iget-object p1, p0, Lorg/eclipse/paho/android/service/e$b;->c:Lorg/eclipse/paho/android/service/e;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/e;->a(Lorg/eclipse/paho/android/service/e;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/paho/android/service/e$b;->c:Lorg/eclipse/paho/android/service/e;

    invoke-static {v0}, Lorg/eclipse/paho/android/service/e;->b(Lorg/eclipse/paho/android/service/e;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/e$b;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    return-void
.end method

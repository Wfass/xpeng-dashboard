.class Lorg/eclipse/paho/android/service/a$a;
.super Landroid/content/BroadcastReceiver;
.source "AlarmPingSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/a;

.field private b:Lorg/eclipse/paho/android/service/a$b;

.field private c:Landroid/os/PowerManager$WakeLock;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/a;)V
    .locals 1

    .line 185
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Lorg/eclipse/paho/android/service/a$b;

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MqttService.client."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    .line 189
    invoke-static {v0}, Lorg/eclipse/paho/android/service/a;->a(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/android/service/a;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/android/service/a;->b(Lorg/eclipse/paho/android/service/a;)Lcew;

    move-result-object v0

    invoke-virtual {v0}, Lcew;->h()Lcee;

    move-result-object v0

    invoke-interface {v0}, Lcee;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/a$a;->d:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 6

    const-string v0, "AlarmPingSender"

    const-string v1, "alarm ping sender execute"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    invoke-static {v1}, Lorg/eclipse/paho/android/service/a;->c(Lorg/eclipse/paho/android/service/a;)Lorg/eclipse/paho/android/service/MqttService;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 212
    iget-object v2, p0, Lorg/eclipse/paho/android/service/a$a;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/android/service/a$a;->c:Landroid/os/PowerManager$WakeLock;

    .line 213
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 215
    iget-object v1, p0, Lorg/eclipse/paho/android/service/a$a;->b:Lorg/eclipse/paho/android/service/a$b;

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1, v3}, Lorg/eclipse/paho/android/service/a$b;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous ping async task was cancelled at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    new-instance v0, Lorg/eclipse/paho/android/service/a$b;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/android/service/a$b;-><init>(Lorg/eclipse/paho/android/service/a;Lorg/eclipse/paho/android/service/a$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/a$a;->b:Lorg/eclipse/paho/android/service/a$b;

    .line 222
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a;->b:Lorg/eclipse/paho/android/service/a$b;

    new-array v1, v3, [Lcew;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/paho/android/service/a$a;->a:Lorg/eclipse/paho/android/service/a;

    invoke-static {v3}, Lorg/eclipse/paho/android/service/a;->b(Lorg/eclipse/paho/android/service/a;)Lcew;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/android/service/a$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lorg/eclipse/paho/android/service/a$a;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/a$a;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/a$a;->a()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 195
    new-instance p1, Lorg/eclipse/paho/android/service/a$a$1;

    invoke-direct {p1, p0}, Lorg/eclipse/paho/android/service/a$a$1;-><init>(Lorg/eclipse/paho/android/service/a$a;)V

    invoke-static {p1}, Lorg/eclipse/paho/android/service/k;->a(Ljava/lang/Runnable;)V

    return-void
.end method

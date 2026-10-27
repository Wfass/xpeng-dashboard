.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;->onNetworkChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldNetType:I

.field final synthetic this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;->mOldNetType:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 74
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 75
    const-string v1, "MQTT"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 77
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 78
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 80
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 82
    iget v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;->mOldNetType:I

    if-eq v5, v4, :cond_1

    .line 83
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    move v2, v3

    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->networkChanged(Z)V

    .line 86
    :cond_1
    iput v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;->mOldNetType:I

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;->mOldNetType:I

    .line 89
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->networkChanged(Z)V

    .line 91
    :goto_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    return-void
.end method

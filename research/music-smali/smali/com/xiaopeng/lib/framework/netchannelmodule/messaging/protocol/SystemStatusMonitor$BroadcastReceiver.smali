.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;)V

    return-void
.end method

.method private onNetworkChanged()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;->onNetworkChanged()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object p1

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "awake from sleep"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

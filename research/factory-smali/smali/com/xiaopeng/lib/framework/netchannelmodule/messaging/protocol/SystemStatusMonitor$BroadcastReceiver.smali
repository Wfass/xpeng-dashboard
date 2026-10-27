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
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$1;

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

    .line 94
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;->onNetworkChanged()V

    goto :goto_0

    .line 59
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "awake from sleep"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugCommandMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$1;

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SystemStatusMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x2928da1f

    if-eq v2, v3, :cond_2

    const v3, 0x2958e085

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.xiaopeng.broadcast.ACTION_DEBUG_OPEN_MQTT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "com.xiaopeng.broadcast.ACTION_DEBUG_CLOSE_MQTT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 58
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->requestToConnect()V

    .line 59
    goto :goto_1

    .line 54
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->requestToDisconnect()V

    .line 55
    nop

    .line 64
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

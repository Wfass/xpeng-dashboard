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

    .line 43
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive action:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SystemStatusMonitor"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2928da1f

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x2958e085

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.xiaopeng.broadcast.ACTION_DEBUG_OPEN_MQTT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p2, v2

    goto :goto_0

    :cond_2
    const-string v0, "com.xiaopeng.broadcast.ACTION_DEBUG_CLOSE_MQTT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_1

    .line 58
    :cond_4
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->requestToConnect()V

    goto :goto_1

    .line 54
    :cond_5
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->requestToDisconnect()V

    :goto_1
    return-void
.end method

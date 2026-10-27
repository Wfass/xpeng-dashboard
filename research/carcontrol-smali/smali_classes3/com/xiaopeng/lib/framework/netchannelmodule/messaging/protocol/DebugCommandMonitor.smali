.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;
.super Ljava/lang/Object;
.source "DebugCommandMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$Holder;
    }
.end annotation


# static fields
.field private static final ACTION_BROADCAST_DEBUG_CLOSE_MQTT:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_DEBUG_CLOSE_MQTT"

.field private static final ACTION_BROADCAST_DEBUG_OPEN_MQTT:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_DEBUG_OPEN_MQTT"

.field private static final TAG:Ljava/lang/String; = "SystemStatusMonitor"


# instance fields
.field private mReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;
    .locals 1

    .line 30
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerBroadcastReceiver()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;->mReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;->mReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaopeng.broadcast.ACTION_DEBUG_OPEN_MQTT"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.broadcast.ACTION_DEBUG_CLOSE_MQTT"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor;->mReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/DebugCommandMonitor$CommandReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

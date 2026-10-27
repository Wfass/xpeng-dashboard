.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;,
        Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$Holder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SystemStatusMonitor"

.field private static final TYPE_NONE:I = -0x1


# instance fields
.field private mBroadcastReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;
    .locals 1

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;->mBroadcastReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;->mBroadcastReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor;->mBroadcastReceiver:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/SystemStatusMonitor$BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

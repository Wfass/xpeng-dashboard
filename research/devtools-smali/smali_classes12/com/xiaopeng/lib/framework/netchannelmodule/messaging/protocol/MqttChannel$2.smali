.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->networkChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Z)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    iput-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    return-void

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->val$connected:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->NETWORK_CHANGED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->commitForcibly()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 136
    :cond_2
    :goto_0
    return-void
.end method

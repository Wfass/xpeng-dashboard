.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$4;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    .line 843
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$4;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$4;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V

    .line 847
    return-void
.end method

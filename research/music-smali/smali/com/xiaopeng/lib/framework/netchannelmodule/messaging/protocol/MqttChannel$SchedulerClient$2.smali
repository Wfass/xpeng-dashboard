.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;
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

    .line 782
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    const-string v1, "Wifi or System APN is not available, delay to try..."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->access$2700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->access$2800(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v1, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1200(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lorg/eclipse/paho/android/service/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 794
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v1, v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$800(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Z

    move-result v0

    goto :goto_0

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->access$2802(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;I)I

    .line 798
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->access$2500(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 802
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v2, v2, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    const-string v1, "Connecting..."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 809
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    iget-object v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->access$2700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient$2;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;->access$2800(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$SchedulerClient;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

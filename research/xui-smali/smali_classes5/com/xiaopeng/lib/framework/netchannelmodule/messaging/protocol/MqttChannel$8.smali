.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->subscribeInternal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 430
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->val$topic:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "asyncActionToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1300(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postUnsubscribed()V

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->increaseFail()V

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribeToTopic topicName onFailure topicName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->val$topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 449
    if-eqz p2, :cond_0

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 453
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 3
    .param p1, "asyncActionToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscribe topicName onSuccess topicName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->val$topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1300(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->val$topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postSubscribed(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$8;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->resetFail()V

    .line 436
    return-void
.end method

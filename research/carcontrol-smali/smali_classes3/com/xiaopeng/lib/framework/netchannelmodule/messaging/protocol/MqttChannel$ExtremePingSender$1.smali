.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 0

    .line 693
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$1802(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I

    .line 694
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    const/16 p2, 0x2710

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$2002(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I

    .line 695
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    const/16 p2, 0x1f40

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$2102(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I

    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 1

    .line 682
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$1808(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)I

    .line 683
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    iget-object p1, p1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1700(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$1900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$1800(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;)I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 685
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    const v0, 0x13880

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$2002(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I

    .line 686
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    const/16 v0, 0x4e20

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$2102(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I

    .line 687
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender$1;->this$1:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;->access$1802(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$ExtremePingSender;I)I

    :cond_0
    return-void
.end method

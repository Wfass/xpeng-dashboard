.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$6;
.super Ljava/lang/Object;
.source "MqttChannel.java"

# interfaces
.implements Lorg/eclipse/paho/android/service/MqttTraceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->initAndroidClientSuccess()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    .line 391
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$6;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$6;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "traceDebug_source--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$1000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public traceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$6;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "traceError_source--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel$6;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "traceException_source--> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->access$900(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;Ljava/lang/String;)V

    .line 405
    return-void
.end method
